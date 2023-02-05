extends Area2D
class_name City

signal new_target_city()

export var end_city := false

# variables
export var number := 0
#export var city_name : String
#export var has_market := false

# engine
var mouse_hover := false
var selected := false

func _on_City_mouse_entered():
	mouse_hover = true

func _on_City_mouse_exited():
	mouse_hover = false

func anims():
	if selected:
		$Sprite.frame = 2
	elif mouse_hover:
		$Sprite.frame = 1
	else:
		$Sprite.frame = 0

func selection():
	if !selected:
		if mouse_hover and Input.is_action_just_pressed("select_city"):
			selected = true
	else:
		if mouse_hover and Input.is_action_just_pressed("select_city"):
			selected = false
	
	if !mouse_hover and Input.is_action_just_pressed("select_city"):
		selected = false

func _physics_process(delta):
	anims()
	selection()
	
	if selected and Global.arrived:
		Global.selected_city = self
		
		if number == Global.current_city.number + 1:
			Global.target_city = self
			emit_signal("new_target_city")
