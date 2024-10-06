extends Node

@onready var path = preload("res://scenes/Stage 1.tscn")
var waveSize = 20
var numberOfSpawned = 0
var readyToSpawn = true

func _on_timer_timeout():
	if readyToSpawn:
		var tempPath = path.instantiate()
		add_child(tempPath)
		numberOfSpawned += 1
		if numberOfSpawned == waveSize:
			readyToSpawn = false
