extends CharacterBody2D

var accaleratie = 1100
var jump_speed = 700
var gravity = 1000
var deaccel = 1000

func _process(delta):

	velocity.y += gravity * delta

	print(!Input.is_action_pressed("ui_right"))

	if Input.is_action_pressed("ui_left") && velocity.x >= -400:
		velocity.x -= accaleratie * delta
	if Input.is_action_pressed("ui_right") && velocity.x <= 400:
		velocity.x += accaleratie * delta
	if Input.is_action_pressed("ui_up") and is_on_floor():
		velocity.y -= jump_speed

	if !Input.is_action_pressed("ui_right") and !Input.is_action_pressed("ui_up") and velocity.x != 0:
		if velocity.x > 30:
			velocity.x -= deaccel * delta
		elif velocity.x < -30:
			velocity.x += deaccel * delta
		else:
			velocity.x = 0

	move_and_slide()
