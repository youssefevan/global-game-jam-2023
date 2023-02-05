extends Node2D
class_name Encounter

var repair_cost : int

var encounter_type : String

func _ready():
	Global.encounter = self

func start_encounter(type : String):
	self.visible = true
	encounter_type = type
	
	match type:
		"flat_tire":
			flat_tire()
		"hit_deer":
			hit_deer()
		"rest_stop":
			rest_stop()

func flat_tire():
	$Title.text = "Flat tire"
	$Pay.text = "$" + str(Global.flat_repair)
	$Continue.text = str("-1 health")

func hit_deer():
	$Title.text = "Hit deer"
	$Pay.text = "$" + str(Global.deer_repair)
	$Continue.text = str("-1 health")

func rest_stop():
	$Title.text = "Rest stop"
	$Pay.text = "$" + str(Global.refuel)
	$Continue.text = str("-1 fuel")


func _on_Pay_button_up():
	if encounter_type == "flat_tire":
		Global.money -= Global.flat_repair
	
	if encounter_type == "hit_deer":
		Global.money -= Global.deer_repair
	
	if encounter_type == "rest_stop":
		Global.money -= Global.refuel
	
	self.visible = false
	Global.player.pause_for_encounter()

func _on_Continue_button_up():
	if encounter_type == "flat_tire":
		Global.health -= 1
	
	if encounter_type == "hit_deer":
		Global.health -= 1
	
	if encounter_type == "rest_stop":
		Global.fuel -= 1
	
	self.visible = false
	Global.player.pause_for_encounter()
