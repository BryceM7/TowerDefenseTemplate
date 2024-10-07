extends Solider


func _ready():
	Health = 20
	speed = 150


	
func _process(delta):
	var path : PathFollow2D = get_parent()
	path.set_progress(path.get_progress() + speed*delta)
	if get_parent().get_progress_ratio() == 1:
		get_tree().quit()


	if Health <= 0:
		get_parent().get_parent().queue_free()