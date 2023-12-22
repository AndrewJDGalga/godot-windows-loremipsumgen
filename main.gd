extends Control

var copyBtn = null
var lorem = ""

func _ready():
	copyBtn = $copy_button
	var file = await FileAccess.open("res://assets/sourcetext.txt", FileAccess.READ)
	if file:
		lorem = file.get_as_text()
		copyToClipboard(lorem)

func copyToClipboard(text):
	DisplayServer.clipboard_set(text)

func _on_copy_button_pressed():
	copyToClipboard(lorem)
