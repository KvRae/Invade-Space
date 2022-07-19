extends Node2D

func _ready():
	$Animation.play("Explode")


func _on_Animation_animation_finished(anim_name):
	queue_free()
