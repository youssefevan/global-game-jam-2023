extends Path2D

onready var follow = get_node("PathFollow2D")
var selected = true

func _physics_process(delta):
	if selected == true:
		follow.set_offset(follow.get_offset() + 50 * delta)
