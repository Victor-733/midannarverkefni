from bottle import *
from sys import argv
import json
import urllib.request

@route("/")
def index():
    return "myes"


run(host="0.0.0.0", port=argv[1], debug=True, reloader=True)