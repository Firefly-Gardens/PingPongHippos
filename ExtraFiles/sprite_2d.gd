extends Character

func _ready():
	print("hello world")
func _process(_delta):
	if Input.is_action_pressed("ClockwiseTurn"):
		rotate(0.5)
	if Input.is_action_just_pressed("CounterclockwiseTurn"):
		rotate(-0.5)
	if Input.is_action_pressed("move_right"):
		move_local_x(50)
	if Input.is_action_pressed("move_left"):
		move_local_x(-50)
	if Input.is_action_pressed("move_down"):
		move_local_y(-50)
	if Input.is_action_pressed("move_up"):
		move_local_y(50)
		
