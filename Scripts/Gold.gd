extends Node

var gold = 100

var save_path = "user://main.save"

var goldLabel

# Called when the node enters the scene tree for the first time.
func _ready():
	goldLabel = $/root/Home/Gold/Gold_Label


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	goldLabel.text = "Gold: " + str(gold)


func _on_plus_pressed():
	gold += 1


func _on_minus_pressed():
	gold -= 1


func _on_save_pressed():
	save()
	
func _on_load_pressed():
	load_data()
	
func save():
	var file = FileAccess.open(save_path, FileAccess.WRITE)
	file.store_var(gold)
	
func load_data():
	if FileAccess.file_exists(save_path):
		var file = FileAccess.open(save_path, FileAccess.READ)
		gold = file.get_var(gold)
	else:
		gold = 0
