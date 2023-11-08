extends Node

var staticPlayer

# Called when the node enters the scene tree for the first time.
func _ready():
	staticPlayer = get_node("/root/StaticPlayer")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func save_data(slot):
	var file = FileAccess.open("user://slot" + str(slot) + ".save", FileAccess.WRITE)
	file.store_var(staticPlayer.gold)
	
func load_data(slot):
	if FileAccess.file_exists("user://slot" + str(slot) + ".save"):
		var file = FileAccess.open("user://slot" + str(slot) + ".save", FileAccess.READ)
		staticPlayer.gold = file.get_var(staticPlayer.gold)
	else:
		staticPlayer.gold = 0
