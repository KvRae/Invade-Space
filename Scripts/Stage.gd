extends Node2D

var asteroid_scene = preload("res://Scenes/Asteroid.tscn")

func _ready():
	randomize()
	
func _on_Ateroid_timer_timeout():
	var asteroid_instance = asteroid_scene.instance()
	asteroid_instance.position.x = get_viewport().size.x + 200
	asteroid_instance.position.y = rand_range(0,get_viewport().size.y)
	add_child(asteroid_instance)
