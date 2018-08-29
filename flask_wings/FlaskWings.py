import os 

import jinja2
from .views import views


class FlaskWings:
    """ Boilerplate Flask extension that overrides templates and views."""
    
    def __init__(self, app):
        templates_dir = os.path.join(
            os.path.dirname(os.path.realpath(__file__)), 'templates')
        my_loader = jinja2.ChoiceLoader([
            app.jinja_loader,
            jinja2.FileSystemLoader(templates_dir),
        ])
        app.jinja_loader = my_loader
        app.register_blueprint(views)
