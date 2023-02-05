extends Node2D
class_name Encounter

func _ready():
	Global.encounter = self

func start_encounter(type : String):
	self.visible = true
