from flask import Flask, render_template, request

app = Flask(__name__)

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/add', methods=['POST'])
def add():
    a = int(request.form['a'])
    b = int(request.form['b'])
    result = a + b
    return render_template('result.html', result=result)

@app.route('/subtract', methods=['POST'])
def subtract():
    a = int(request.form['a'])
    b = int(request.form['b'])
    result = a - b
    return render_template('result.html', result=result)

if __name__ == '__main__':
    app.run()
