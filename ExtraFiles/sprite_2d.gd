extends Sprite2D
func _ready():
	print("hello world")
func _process(_delta):
		if Input.is_action_pressed("ClockwiseTurn"):
			rotate(0.025)
		if Input.is_action_pressed("CounterclockwiseTurn"):
			rotate(-0.025)
		if Input.is_action_pressed("MoveUp"):
			move_local_y(-10)
		if Input.is_action_pressed("MoveDown"):
			move_local_y(10)
		if Input.is_action_pressed("MoveLeft"):
			move_local_x(-10)
		if Input.is_action_pressed("MoveRight"):
			move_local_x(10)
