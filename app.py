import os

from flask import Flask, request

app = Flask(__name__)

@app.route('/teste', methods=['POST'])
def teste():
    json_object = request.json()
    return json_object, 200

if __name__ == "__main__":
    app.run(debug=True, host="0.0.0.0", port=int(os.environ.get("PORT", 8080)))