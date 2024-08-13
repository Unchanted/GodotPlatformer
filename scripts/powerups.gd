extends AnimatableBody2D


@onready var animation_player = $AnimationPlayer


func _on_body_entered(_body):
	animation_player.play("triggered")
