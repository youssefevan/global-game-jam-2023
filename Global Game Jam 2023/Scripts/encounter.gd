extends Node2D
class_name Encounter

func _ready():
	Global.encounter = self

func start_encounter(type : String):
	self.visible = true
	
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
	$Pay/answer1.text = str("Repair: $", Global.flat_repair)
	
	$Continue/answer2.text = str("Continue: -1 health")

func hit_deer():
	$Title.text = "Hit deer"
	$Pay/answer1.text = str("Repair: $", Global.flat_repair)

func heavy_traffic():
	$Title.text = "Heavy traffic"
	$Pay/answer1.text = str("Repair: $", Global.flat_repair)

func rest_stop():
	$Title.text = "Rest stop"
	$Pay/answer1.text = str("Repair: $", Global.flat_repair)
