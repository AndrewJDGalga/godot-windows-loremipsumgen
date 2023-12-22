extends Control

var copyBtn = null
var paragraphCount = null
var lorem = ""

func _ready():
	var file = FileAccess.open("res://sourcetext.txt", FileAccess.READ)
	lorem = file.get_as_text()
	copyBtn = $copy_button
	paragraphCount = $paragraph_count

func copyToClipboard(text):
	DisplayServer.clipboard_set(text)

func onCopyPress():
	pass


func _on_copy_button_pressed():
	pass # Replace with function body.
