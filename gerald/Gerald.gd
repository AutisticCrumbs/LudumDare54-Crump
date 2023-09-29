extends CharacterBody2D


func _physics_process(_delta):
	if Input.is_action_pressed("up"):
		position.y -= 3
	if Input.is_action_pressed("down"):
		position.y += 3
	if Input.is_action_pressed("left"):
		position.x -= 3
	if Input.is_action_pressed("right"):
		position.x += 3

	move_and_slide()
