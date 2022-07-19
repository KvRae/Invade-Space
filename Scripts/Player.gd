extends Area2D

export (int) var speed = 350

var bullet_scene = preload("res://Scenes/Bullet.tscn")

func _process(delta):
	var direction = Vector2()
	# gestion de la direction
	if Input.is_action_pressed("ui_right"):
		direction.x += 1
	if Input.is_action_pressed("ui_left"):
		direction.x -= 1
	if Input.is_action_pressed("ui_down"):
		direction.y += 1
	if Input.is_action_pressed("ui_up"):
		direction.y -= 1
	# gestion du tir	
	if Input.is_action_just_pressed("fire"):
		var bullet_instance = bullet_scene.instance()
		bullet_instance.position = $Bullet_position.global_position
		get_parent().add_child(bullet_instance)
			
	position += (speed * delta) * direction
	# limit la position pour ne pas sortir de l'écran
	if position.x < 0:
		position.x = 0
	elif position.x > get_viewport().size.x:
		position.x = get_viewport().size.x
	
	if position.y < 0:
		position.y = 0
	elif position.y > get_viewport().size.y:
		position.y = get_viewport().size.y