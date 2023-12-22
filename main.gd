extends Control

var copyBtn = null
var lorem = ""

func _ready():
	var file = FileAccess.open("res://sourcetext.txt", FileAccess.READ)
	lorem = file.get_as_text()
	copyBtn = $copy_button
	copyToClipboard(lorem)

func copyToClipboard(text):
	DisplayServer.clipboard_set(text)

func _on_copy_button_pressed():
	copyToClipboard(lorem)
