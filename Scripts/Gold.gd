extends Node

var staticPlayer
var stateManager
var goldLabel

# Called when the node enters the scene tree for the first time.
func _ready():
	goldLabel = $/root/Home/Gold/Gold_Label
	staticPlayer = get_node("/root/StaticPlayer")
	stateManager = get_node("/root/StateManager")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	goldLabel.text = "Gold: " + str(staticPlayer.gold)


func _on_plus_pressed():
	staticPlayer.gold += 1


func _on_minus_pressed():
	staticPlayer.gold -= 1


func _on_save_1_pressed():
	stateManager.save_data(1)


func _on_save_2_pressed():
	stateManager.save_data(2)


func _on_save_3_pressed():
	stateManager.save_data(3)
