""" Create and run a FlaskWings Flask application. """

from flask import Flask
from flask_wings import FlaskWings

from views import views


app = Flask(__name__)
app.register_blueprint(views)
wings = FlaskWings(app)

if __name__ == '__main__':
    app.run(debug=True)
