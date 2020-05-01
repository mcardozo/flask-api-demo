import json
import os

from flask import Flask
from flask import jsonify

app = Flask(__name__)

@app.route('/')
def hello_world():
    return jsonify({'status': 200})

@app.route('/confirmed-cases')
def get_list_confirmed_cases():
    filename = os.path.join(app.root_path, 'data', 'confirmed-cases.json')
    with open(filename) as test_file:
        return json.load(test_file)