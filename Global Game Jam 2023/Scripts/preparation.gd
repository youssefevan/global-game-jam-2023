extends Node2D

var extra_fuel := false
var extra_food := false
var extra_water := false

func _ready():
	Global.spare_tire = false
	Global.money = 500
	Global.fuel = 30
	Global.food = 30
	Global.water = 30

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
		Global.fuel += 10
		Global.money -= 150
		print(Global.fuel)
	elif extra_fuel == true:
		extra_fuel = false
		Global.fuel -= 10
		Global.money += 150
		print(Global.fuel)

func _on_FoodBox_toggled(button_pressed):
	if extra_food == false:
		Global.food += 10
		Global.money -= 150
		extra_food = true
		print(Global.food)
	elif extra_food == true:
		Global.food -= 10
		Global.money += 150
		extra_food = false
		print(Global.food)

func _on_WaterBox_toggled(button_pressed):
	if extra_water == false:
		extra_water = true
		Global.water += 10
		Global.money -= 150
		print(Global.water)
	elif extra_water == true:
		extra_water = false
		Global.water -= 10
		Global.money += 150
		print(Global.water)