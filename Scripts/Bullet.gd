extends Area2D

export (int) var speed = 600

func _ready():
	$Animation.play("Effect")
	
func _process(delta):
	position.x += speed * delta
	if position.x > get_viewport().size.x + 20:
		queue_free()