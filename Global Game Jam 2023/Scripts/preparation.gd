extends Node2D

var spare_tire := false
var extra_fuel := false
var extra_food := false
var extra_water := false

func _ready():
	Global.money = 500

func _on_TireBox_toggled(button_pressed):
	spare_tire = !spare_tire

func _on_FuelBox_toggled(button_pressed):
	extra_fuel = !extra_fuel

func _on_FoodBox_toggled(button_pressed):
	extra_food = !extra_food

func _on_WaterBox_toggled(button_pressed):
	extra_water = !extra_water
