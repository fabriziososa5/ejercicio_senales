extends TextureButton

func generate_block():
	var block_scene = preload("res://scenes/Blocks/Violet/BlockViolet.tscn")
	var block_instance = block_scene.instantiate()
	get_parent().add_child(block_instance)

	block_instance.position = Vector2(867, 116)
	
func _on_button_down() -> void:
	generate_block()
