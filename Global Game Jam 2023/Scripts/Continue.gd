extends Button

func _on_Continue_gui_input(event):
	if event is InputEventMouseButton:
		if event.is_pressed():
			get_tree().change_scene("res://Scenes/Preparation.tscn")
