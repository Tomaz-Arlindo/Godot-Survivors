extends TextureRect

func _on_jogar_pressed() -> void:
	$start_mp3.play()
	await get_tree().create_timer(0.5).timeout
	get_tree().change_scene_to_file("res://World/world.tscn")
	
	



func _on_sair_pressed() -> void:
	get_tree().quit()
