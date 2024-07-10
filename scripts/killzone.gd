extends Area2D


@onready var timer = $Timer


func _on_body_entered(body):
	print("gameover")
	Engine.time_scale = 0.5
	body.get_node("CollisionShape2D").queue_free()
	body.set_script(null)
	timer.start()

func _on_timer_timeout():
	Engine.time_scale = 1.0
	if Global.player_life >= 1:
		print(Global.player_life)
		Global.player_life -= 1
		get_tree().reload_current_scene()
		
	else:
		Global.player_life = 3
		get_tree().change_scene_to_file("res://scene/GameOver.tscn")
