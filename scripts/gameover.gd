extends CanvasLayer


# Called when the node enters the scene tree for the first time.
func _ready():
	Global.player_life = 3


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_rename_pressed():
	get_tree().change_scene_to_file("res://scene/game.tscn")


func _on_quit_pressed():
	get_tree().quit()

