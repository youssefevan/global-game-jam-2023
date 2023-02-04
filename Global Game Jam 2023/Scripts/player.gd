extends KinematicBody2D

func _physics_process(delta):
	var tween = create_tween().set_trans(Tween.TRANS_LINEAR)
	if Global.target_city != null:
		tween.tween_property(self, "global_position", Global.target_city.global_position, 1)
		#self.global_position = Global.target_city.global_position
