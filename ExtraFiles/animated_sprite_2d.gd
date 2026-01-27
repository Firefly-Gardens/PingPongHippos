extends AnimatedSprite2D

func movementctrls():
	if Input.is_action_pressed("move_down"):
		move_local_y(10)
	if Input.is_action_pressed("move_up"):
		move_local_y(-10)
	if Input.is_action_pressed("move_right"):
		move_local_x(10)
	if Input.is_action_pressed("move_left"):
		move_local_x(-10)
	if Input.is_action_pressed("ClockwiseTurn"):
		rotate(0.05)
	if Input.is_action_pressed("CounterclockwiseTurn"):
		rotate(-0.05)
		
func _physics_process(delta: float) -> void:
	# Add the gravity.
	# Handle jump.
	movementctrls()
