from bottle import *
from sys import argv
import json
import urllib.request

with urllib.request.urlopen("http://apis.is/petrol/") as url:
    data = json.loads(url.read().decode())

@route("/")
def index():
    return template("forsida.tpl", data=data)


run(host="0.0.0.0", port=argv[1], debug=True, reloader=True)