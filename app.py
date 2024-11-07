# app.py
from flask import Flask, jsonify
import random

app = Flask(__name__)

@app.route('/random')
def generate_random_number():
    number = random.randint(1, 100)  # Generate a random number between 1 and 100
    return jsonify({'random_number': number})

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
