extends Panel

@onready var file_path = $"Mod Name/LineEdit".text
@onready var root = OS.get_environment("RES")
@onready var item_name = $"Settings/VBoxContainer/ITEM NAME".text

var assets 		= 	"/assets"
var icons 		= 	"/assets/icons/" 
var items 		= 	"/assets/items/"
var models 		= 	"/assets/model/s"
var music 		= 	"/assets/music/"
var sounds 		= 	"/assets/sounds/"
var textures 	= 	"/assets/textures/"

var scripts = "/scripts/"

var textures_back 		= 		"B.png"
var textures_left 		= 		"Lef.png"
var textures_front 	= 		"Fro.png"
var textures_right 	= 		"R.png"
var textures_top 		= 		"Top.png"
var textures_bottom 	= 		"Bot.png"

var item	=	""

func _debug_texture(file: String):
	print(file_path + textures + file)

func _debug_textures(files: Array):
	var numoffiles = 0
	while not files.size() == numoffiles:
		pass
		print(file_path + textures + files[numoffiles])
		numoffiles += 1

func _on_name_text_submitted(new_text: String) -> void:
	item_name = "/" + new_text
	_debug_textures([textures_back,textures_bottom,textures_front,textures_left,textures_right,textures_top])
