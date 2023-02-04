extends KinematicBody2D

func _physics_process(delta):
	if Global.target_city != null:
		self.global_position = Global.target_city.global_position
