from flask import Flask
from flask_wings import FlaskWings

from views import views


app = Flask(__name__)
app.register_blueprint(views)
app.config['DEBUG'] = True
wings = FlaskWings(app)

if __name__ == '__main__':
    app.run()
