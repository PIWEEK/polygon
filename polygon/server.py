
from dotenv import load_dotenv, find_dotenv
load_dotenv(find_dotenv())
from time import time
from flask import Flask
from flask import jsonify
from flask import request
from flask_sockets import Sockets
from flask_cors import CORS

import polygongeneratormp as polygongenerator
import websockets
import uuid

app = Flask(__name__)
CORS(app)
sockets = Sockets(app)

params_dict = {}

@app.route('/', methods=['POST'])
def main():
    json_data = request.get_json()
    params_uuid = str(uuid.uuid1())
    params_dict[params_uuid] = {
        "cycles": json_data["cycles"],
        "vertex": [(point["x"], point["y"]) for point in json_data["points"]],
    }

    return jsonify({"uuid": params_uuid})

@sockets.route('/polygons/<param_uuid>')
def polygons(ws, param_uuid):
    params = params_dict.get(param_uuid, None)
    filename = param_uuid + ".json"

    if params is not None:
        for polygon in polygongenerator.generate(params["cycles"], params["vertex"], filename):
            ws.send(polygon)

        ws.close()

if __name__ == "__main__":
    from gevent import pywsgi
    from geventwebsocket.handler import WebSocketHandler
    server = pywsgi.WSGIServer(('', 5000), app, handler_class=WebSocketHandler)
    server.serve_forever()
