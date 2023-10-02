extends CharacterBody2D

signal end_game

func _physics_process(_delta):
	if Input.is_action_pressed("up"):
		position.y -= 5
	if Input.is_action_pressed("down"):
		position.y += 5
	if Input.is_action_pressed("left"):
		position.x -= 5
	if Input.is_action_pressed("right"):
		position.x += 5

	move_and_slide()
