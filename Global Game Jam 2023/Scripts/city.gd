extends Area2D
class_name City

# variables
export var city_name : String
export var has_market := false

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
	if selected == false:
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
