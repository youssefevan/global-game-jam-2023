extends KinematicBody2D

export var starting_city_node: NodePath
onready var starting_city : City = get_node(starting_city_node)

var call_tween := true
var travel_time := 0.0

func _ready():
	self.global_position = starting_city.global_position
	Global.current_city = starting_city

func _physics_process(delta):
	if Global.target_city != null:
		if self.global_position == Global.target_city.global_position:
			Global.arrived = true
			Global.current_city = Global.target_city
		else:
			Global.arrived = false
	
	if Global.arrived:
		call_tween = true

func move():
	if call_tween == true:
		travel_time = self.global_position.distance_to(Global.target_city.global_position)/100
		var tween = create_tween().set_trans(Tween.TRANS_LINEAR).set_ease(Tween.EASE_IN_OUT)
		tween.tween_property(self, "global_position", Global.target_city.global_position, travel_time)
		call_tween = false

func _on_City_new_target_city():
	move()

func _on_City2_new_target_city():
	move()

func _on_City3_new_target_city():
	move()

func _on_City4_new_target_city():
	move()

func _on_City5_new_target_city():
	move()
