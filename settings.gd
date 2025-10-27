extends Panel



func _on_item_pressed() -> void:
	if $VBoxContainer/Panel/BoxContainer/Item.button_pressed:
		$"../Item".visible = $VBoxContainer/Panel/BoxContainer/Item.button_pressed
	else:
		$"../Item".visible = $VBoxContainer/Panel/BoxContainer/Item.button_pressed


func _on_block_pressed() -> void:
	if $VBoxContainer/Panel/BoxContainer/Block.button_pressed:
		$"../Textures".visible = $VBoxContainer/Panel/BoxContainer/Block.button_pressed
	else:
		$"../Textures".visible = $VBoxContainer/Panel/BoxContainer/Block.button_pressed
