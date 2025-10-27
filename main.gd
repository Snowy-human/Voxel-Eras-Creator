extends Control

@onready var file_path = $Main.file_path
@onready var root = $Main.root
@onready var USESET = $Main

var file_point

func _ready() -> void:
	print(file_path)

# TODO: saveing flies god save us
func save_file(content):
	var file = FileAccess.open(USESET.scripts+USESET, FileAccess.WRITE)
	file.store_string(content)

# TODO: opening flies god save us
func _file_open(type:String="",target:Object=null):
	match type:
		"tex":
			$File.file_mode = 0
		"root":
			$File.file_mode = 2
		"save":
			$File.file_mode = 2
		"":
			push_error("you need to add a mode dumbass")
	file_point = [type,target]
	$File.visible = true

func _on_code_pressed() -> void:
	if $CodeEdit.visible:
		$CodeEdit.visible = false
		$Main.visible = true
	else:
		$CodeEdit.visible = true
		$Main.visible = false

# TODO: test this to make sure it all works and get saving working
func _on_file_dialog_file_selected(path: String) -> void:
	$File.visible = false
	match file_point[0]:
		"tex":
			var ima = Image.load_from_file(path)
			var tex = ImageTexture.create_from_image(ima)
			file_point[1].texture = tex
		"root":
			root = path
		"save":
			print("saving")

func _on_back_button_pressed() -> void:
	_file_open("tex",$Main/Textures/Back)

func _on_left_button_pressed() -> void:
	_file_open("tex",$Main/Textures/Left)

func _on_front_button_pressed() -> void:
	_file_open("tex",$Main/Textures/Front)

func _on_right_button_pressed() -> void:
	_file_open("tex",$Main/Textures/Right)

func _on_top_button_pressed() -> void:
	_file_open("tex",$Main/Textures/Top)

func _on_bottom_button_pressed() -> void:
	_file_open("tex",$Main/Textures/Bottom)

func _on_item_button_pressed() -> void:
	_file_open("tex",$Main/Item/Item)

func _on_file_path_pressed() -> void:
	_file_open("root")

func _on_save_pressed() -> void:
	_file_open("save")
