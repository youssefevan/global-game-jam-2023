extends Node

var selected_city : City
var target_city : City
var current_city : City

var arrived := true

#Counters
var water = 0
var fuel = 0
var food = 0

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
				flat_tire()
			1:
				hit_deer()
			2: 
				heavy_traffic()
			3:
				rest_stop()

func flat_tire():
	print("flat tire")
	yield(get_tree().create_timer(1), "timeout")
	player.pause_for_encounter()
	print("unpause")

func hit_deer():
	print("hit deer")
	yield(get_tree().create_timer(1), "timeout")
	player.pause_for_encounter()
	print("unpause")

func heavy_traffic():
	print("heavy traffic")
	yield(get_tree().create_timer(1), "timeout")
	player.pause_for_encounter()
	print("unpause")

func rest_stop():
	print("rest stop")
	yield(get_tree().create_timer(1), "timeout")
	player.pause_for_encounter()
	print("unpause")
