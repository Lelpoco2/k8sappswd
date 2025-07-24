from flask import Flask, request, jsonify
from flask_cors import CORS

app = Flask(__name__)
CORS(app)

@app.route('/')
def hello():
    return jsonify(message="Hello, World K8sapp!")

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000, debug = True)