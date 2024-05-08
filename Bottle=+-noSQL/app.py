from bottle import route, run, template, request, redirect, static_file, error
from pymongo import MongoClient
from bson.objectid import ObjectId
from PIL import Image
import os

# Database setup
client = MongoClient('mongodb://localhost:27017/')
db = client.myecommerce
users = db.users
products = db.products

image_dir = 'static/images'
if not os.path.exists(image_dir):
    os.makedirs(image_dir)

# Static file path
@route('/static/<filename:path>')
def send_static(filename):
    return static_file(filename, root='static/')

# Home page (Signup)
@route('/')
@route('/signup', method=['GET', 'POST'])
def signup():
    if request.method == 'POST':
        username = request.forms.get('username')
        password = request.forms.get('password')
        if users.find_one({"username": username}):
            return template('signup', error="Username already exists")
        users.insert_one({"username": username, "password": password})
        redirect('/login')
    return template('signup', error=None)

# Login page
@route('/login', method=['GET', 'POST'])
def login():
    if request.method == 'POST':
        username = request.forms.get('username')
        password = request.forms.get('password')
        user = users.find_one({"username": username, "password": password})
        if user:
            redirect('/landing')
        else:
            return template('login', error="Invalid username or password")
    return template('login', error=None)

# Landing page
@route('/landing')
def landing():
    return template('landing')

# Add product
from pymongo.errors import PyMongoError

@route('/add_product', method=['GET', 'POST'])
def add_product():
    if request.method == 'POST':
        name = request.forms.get('name')
        price = request.forms.get('price')
        category = request.forms.get('category')
        description = request.forms.get('description')
        image = request.files.get('image')
        features = request.forms.get('features')

        if image and image.file:
            img_path = os.path.join('static/images', image.filename)
            try:
                if not os.path.exists('static/images'):
                    os.makedirs('static/images')
                image.save(img_path)  # Save the image
            except Exception as e:
                return f"Error saving image: {str(e)}"

        product_data = {
            "name": name,
            "price": price,
            "category": category,
            "description": description,
            "image_url": img_path,
            "features": features
        }
        try:
            products.insert_one(product_data)
            return template('add_success', name=name)  # Render a success template
        except Exception as e:
            return f"Error inserting product into MongoDB: {str(e)}"

    return template('add_product')




# View products
@route('/view_product')
def view_product():
    all_products = products.find()
    return template('view_product', all_products=all_products)

# Edit product
@route('/edit_product/<id>', method=['GET', 'POST'])
def edit_product(id):
    product = products.find_one({"_id": ObjectId(id)})
    if request.method == 'POST':
        product['name'] = request.forms.get('name')
        product['price'] = request.forms.get('price')
        product['category'] = request.forms.get('category')
        product['description'] = request.forms.get('description')
        product['features'] = request.forms.get('features')

        products.update_one({"_id": ObjectId(id)}, {"$set": product})
        redirect('/view_product')
    return template('edit_product', product=product)

# Delete product
@route('/delete_product/<id>')
def delete_product(id):
    products.delete_one({"_id": ObjectId(id)})
    redirect('/view_product')

# Error handling
@error(404)
def error404(error):
    return 'Nothing here, sorry'

# Run the server
run(host='localhost', port=8080)
