import random
import string

from flask import Blueprint, render_template


# Prevent naming collision between this blueprint and that of
# the client, by using a randomly generated name.
name = ''.join(random.choice(string.ascii_uppercase + string.digits) for _ in range(32))
name = 'FlaskWings_' + name
views = Blueprint(name, __name__)

@views.route('/')
def root():
    return render_template('index.html')

@views.route('/login')
def login():
    return render_template('login.html')
