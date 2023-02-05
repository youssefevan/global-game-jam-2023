extends Node2D

var extra_fuel := false
var extra_food := false
var extra_health := false

func _ready():
	Global.spare_tire = false
	Global.money = 8
	Global.fuel = 3
	Global.food = 3
	Global.health = 3

func _on_TireBox_toggled(button_pressed):
	if Global.spare_tire == false:
		Global.money -= 300
		Global.spare_tire = true
		#print(Global.spare_tire)
	elif Global.spare_tire == true:
		Global.money += 300
		Global.spare_tire = false
		#print(Global.spare_tire)

func _on_FuelBox_toggled(button_pressed):
	if extra_fuel == false:
		extra_fuel = true
		Global.fuel += 1
		Global.money -= 3
		print(Global.fuel)
	elif extra_fuel == true:
		extra_fuel = false
		Global.fuel -= 1
		Global.money += 3
		print(Global.fuel)
#
#func _on_FoodBox_toggled(button_pressed):
#	if extra_food == false:
#		Global.food += 1
#		Global.money -= 
#		extra_food = true
#		print(Global.food)
#	elif extra_food == true:
#		Global.food -= 1
#		Global.money += 1
#		extra_food = false
#		print(Global.food)

func _on_healthBox_toggled(button_pressed):
	if extra_health == false:
		extra_health = true
		Global.health += 1
		Global.money -= 3
		print(Global.health)
	elif extra_health == true:
		extra_health = false
		Global.health -= 1
		Global.money += 3
		print(Global.health)

func _on_TextureButton_gui_input(event):
	if event is InputEventMouseButton:
		if event.is_pressed():
			get_tree().change_scene("res://Scenes/World.tscn")
