extends Control

var clipboardObj = null
var lorem = ""

func _ready():
	var file = FileAccess.open("res://sourcetext.txt", FileAccess.READ)
	lorem = file.get_as_text()
	var testText = lorem + "\n" + lorem
	copyToClipboard(testText)

func copyToClipboard(text):
	DisplayServer.clipboard_set(text)
