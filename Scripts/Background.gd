extends Node2D

export (int) var speed = 100

func _process(delta):
	position.x -= speed * delta
	if position.x <= -get_viewport().size.x:
		position.x = 0
