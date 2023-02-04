extends KinematicBody2D

var call_tween := true
var arrived := false

func _physics_process(delta):
	if Global.target_city != null:
		if self.global_position == Global.target_city.global_position:
			arrived = true
		else:
			arrived = false
	
	if arrived == true:
		call_tween = true

func move():
	if call_tween == true:
		var tween = create_tween().set_trans(Tween.TRANS_LINEAR).set_ease(Tween.EASE_IN_OUT)
		tween.tween_property(self, "global_position", Global.target_city.global_position, 2.0)
		call_tween = false

func _on_City_new_city_selected():
	move()

func _on_City2_new_city_selected():
	move()
