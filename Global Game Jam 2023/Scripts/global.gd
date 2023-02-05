extends Node

var selected_city : City
var target_city : City
var current_city : City
var encounter : Encounter

var flat_repair := 1
var deer_repair := 1
var refuel := 1

var arrived := true

#Counters
var health = 3
var fuel = 3
var food = 0
var money = 3

var spare_tire := false

var random = RandomNumberGenerator.new()

onready var player : Player

func _physics_process(delta):
	if health == 0 || fuel == 0:
		get_tree().change_scene("res://Scenes/GameOver.tscn")

func get_encounter():
	random.randomize()
	var enable_encounter = random.randi() % 3
	
	if enable_encounter == 0:
		pass
	else:
		player.pause_for_encounter()
		var which_encounter = random.randi() % 3
		match which_encounter:
			0:
				encounter.start_encounter("flat_tire")
			1:
				encounter.start_encounter("hit_deer")
			2: 
				encounter.start_encounter("rest_stop")
