extends Node

var selected_city : City
var target_city : City
var current_city : City
var encounter : Encounter

var arrived := true

#Counters
var damage = 0
var fuel = 0
var food = 0
var money = 0

var spare_tire := false

var random = RandomNumberGenerator.new()

onready var player : Player

func get_encounter():
	random.randomize()
	var enable_encounter = random.randi() % 2
	
	if enable_encounter != 0:
		pass
	else:
		player.pause_for_encounter()
		var which_encounter = random.randi() % 4
		match which_encounter:
			0:
				encounter.start_encounter("flat_tire")
			1:
				encounter.start_encounter("hit_deer")
			2: 
				encounter.start_encounter("heavy_traffic")
			3:
				encounter.start_encounter("rest_stop")
