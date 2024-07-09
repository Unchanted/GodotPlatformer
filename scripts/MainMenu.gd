extends Node



func _on_start_pressed():
	get_tree().change_scene_to_file("res://scene/game.tscn")

func _on_end_pressed():
	get_tree().quit()
