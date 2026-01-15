extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0


func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	
	if Input.is_action_just_pressed("ClockwiseTurn"):
		rotate(20)
	if Input.is_action_just_pressed("CounterclockwiseTurn"):
		rotate(20)
	if Input.is_action_just_pressed("move_right"):
		move_local_x(20)
	if Input.is_action_just_pressed("move_left"):
		move_local_x(-20)
	if Input.is_action_just_pressed("move_up"):
		move_local_y(20)
	if Input.is_action_just_pressed("move_down"):
		move_local_y(-20)

	move_and_slide()
