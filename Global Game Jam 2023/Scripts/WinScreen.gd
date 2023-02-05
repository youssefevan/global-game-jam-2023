extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called 


func _on_Redo_gui_input(event):
	if event is InputEventMouseButton:
		if event.is_pressed():
			get_tree().change_scene("res://Scenes/Preparation.tscn")
