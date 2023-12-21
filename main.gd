extends Control

var lorem = ""

func _ready():
	var file = FileAccess.open("res://sourcetext.txt", FileAccess.READ)
	lorem = file.get_as_text()
	
	if lorem != "":
		print(lorem)
