extends Label

func _physics_process(delta):
	self.text = str(Global.money) + " "
