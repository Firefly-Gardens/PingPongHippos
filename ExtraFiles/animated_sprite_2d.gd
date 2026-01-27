extends AnimatedSprite2D

func movementctrls():
	if Input.is_action_just_pressed("move_down"):
		move_local_y(25)
	if Input.is_action_just_pressed("move_up"):
		move_local_y(-25)
	if Input.is_action_just_pressed("move_right"):
		move_local_x(25)
	if Input.is_action_just_pressed("move_left"):
		move_local_x(-25)
		
func _physics_process(delta: float) -> void:
	# Add the gravity.
	# Handle jump.
	movementctrls()
