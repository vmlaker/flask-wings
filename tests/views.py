""" Views for the parent Flask application. """

from flask import Blueprint, render_template

views = Blueprint('views', __name__)

@views.route('/')
def root():
    return render_template('index.html')

@views.route('/home')
def home():
    return render_template('home.html')
