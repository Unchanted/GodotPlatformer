extends Area2D


@onready var timer = $Timer


func _on_body_entered(body):
	print("gameover")
	Engine.time_scale = 0.5
	body.get_node("CollisionShape2D").queue_free()
	body.set_script(null)
	timer.start()

func _on_timer_timeout():
	if Global.player_life >= 1:
		print(Global.player_life)
		Engine.time_scale = 1.0
		Global.player_life -= 1
		get_tree().reload_current_scene()
		
	else:
		get_tree().change_scene_to_file("res://scene/GameOver.tscn")
