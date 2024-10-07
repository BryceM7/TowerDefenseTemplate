extends Panel

@onready var tower = preload("res://Towers/red_bullet_tower.tscn")
var currTile



func _on_gui_input(event:InputEvent):
	var tempTower = tower.instantiate()
	var mousePosition = get_global_mouse_position()
	if event is InputEventMouseButton and event.button_mask == 1:
		#left click down 
		add_child(tempTower)

		tempTower.process_mode = Node.PROCESS_MODE_DISABLED

		tempTower.scale = Vector2(0.32,0.32)
	elif event is InputEventMouseMotion and event.button_mask == 1:
		#left click down drag
		get_child(1).global_position = get_global_mouse_position()
		tempTower.global_position = get_global_mouse_position()
	elif event is InputEventMouseButton and event.button_mask == 0:


		#Left click up
		
		var path = get_tree().get_root().get_node("Main/Towers")
		path.add_child(tempTower)
		tempTower.global_position = mousePosition
		tempTower.get_node("Area").hide()

	else:
		if get_child_count() > 1:
			get_child(1).queue_free()



