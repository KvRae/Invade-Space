extends Area2D
export (int) var speed = 150

var explosion_scene = preload("res://Scenes/Explosion.tscn")

func _process(delta):
	position.x -= speed * delta
	if position.x < -100:
		queue_free()


func _on_Asteroid_area_entered(area):
	if area.is_in_group("bullet") or area.is_in_group("player"):
		var explosion_instance = explosion_scene.instance()
		explosion_instance.position = position
		get_parent().add_child(explosion_instance)
		queue_free()
		area.queue_free()
