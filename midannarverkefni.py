from bottle import *
from sys import argv
import json
import urllib.request

with urllib.request.urlopen("http://apis.is/petrol/") as url:
    data = json.loads(url.read().decode())

@route("/")
def index():
    return template("forsida.tpl", data=data)

@route("/company/<company>")
def index(company):
    return template("company.tpl", data=data, co=company)

@route("/moreinfo/<key>")
def index(key):
    return template('moreinfo.tpl', data=data, k=k)

#########################################################################

@route("/static/<skra>")
def static(skra):
    return static_file(skra, root="./static")

run(host="0.0.0.0", port=argv[1], debug=True, reloader=True)