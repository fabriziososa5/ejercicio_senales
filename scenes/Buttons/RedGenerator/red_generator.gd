extends TextureButton

func generate_block():
	var block_scene = preload("res://scenes/Buttons/RedGenerator/RedGenerator.tscn")
	var block_instance = block_scene.instantiate()
	add_child(block_instance)

	# opcional: posición
	block_instance.position = Vector2(100, 100)
	
func _on_button_down() -> void:
	get_parent().generate_block()
