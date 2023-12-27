extends Node
@onready var http_request = $HTTPRequest
@onready var label = $Control/Label
const url = "https://www.dnd5eapi.co/"
var pagina = "/api"

func _ready():
	http_request.request(url + pagina)




func _on_request_completed(result, response_code, headers, body):
	var dati = JSON.parse_string(body.get_string_from_utf8())
	print(dati)
	label.text = dati.text
