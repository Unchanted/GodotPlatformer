extends Area2D


func _on_body_entered(body):
	print("you acquired the coin")
	queue_free()
