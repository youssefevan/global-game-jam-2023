extends Node2D
class_name Encounter

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
		"heavy_traffic":
			heavy_traffic()
		"rest_stop":
			rest_stop()

func flat_tire():
	$Title.text = "Flat tire"
	$Pay.text = str("Repair: $", Global.flat_repair)
	
	$Continue.text = str("Continue: -1 health")

func hit_deer():
	$Title.text = "Hit deer"
	$Pay.text = str("Repair: $", Global.flat_repair)

func heavy_traffic():
	$Title.text = "Heavy traffic"
	$Pay.text = str("Repair: $", Global.flat_repair)

func rest_stop():
	$Title.text = "Rest stop"
	$Pay.text = str("Repair: $", Global.flat_repair)

func _on_Pay_button_up():
	self.visible = false
	Global.player.stop_for_encounter()

func _on_Continue_button_up():
	self.visible = false
	Global.player.stop_for_encounter()
