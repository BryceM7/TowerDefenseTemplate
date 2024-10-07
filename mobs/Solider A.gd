extends CharacterBody2D
class_name Solider

@onready var game_manager = get_tree().get_root().get_node("Main/GameManager")
@export var speed = 100

var Health = 10

func _process(delta):
	var path : PathFollow2D = get_parent()
	path.set_progress(path.get_progress() + speed*delta)
	if get_parent().get_progress_ratio() == 1:
		get_tree().quit()


	if Health <= 0:
		if path.get_parent():  
			path.get_parent().queue_free()
			game_manager.add_point()