extends CharacterBody2D


@export var speed = 100
var Health = 10
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var path : PathFollow2D = get_parent()
	path.set_progress(path.get_progress() + speed*delta)
	if get_parent().get_progress_ratio() == 1:
		queue_free()


	if Health <= 0:
		get_parent().get_parent().queue_free()