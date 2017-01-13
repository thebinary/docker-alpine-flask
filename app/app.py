from flask import Flask
app = Flask(__name__)

@app.route("/")
def hello():
    return "Just hello"
    return "Hello : from Flask!"

if __name__ == "__main__":
    app.run(debug=True)
