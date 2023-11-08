extends Node

var staticPlayer
var stateManager
var goldLabel

var saveButton
var popup

# Called when the node enters the scene tree for the first time.
func _ready():
	goldLabel = $/root/Home/Gold/Gold_Label
	saveButton = $/root/Home/Save
	staticPlayer = get_node("/root/StaticPlayer")
	stateManager = get_node("/root/StateManager")
	popup = saveButton.get_popup()
	popup.connect("id_pressed", Callable(self, "_save_file"))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	goldLabel.text = "Gold: " + str(staticPlayer.gold)


func _on_plus_pressed():
	staticPlayer.gold += 1


func _on_minus_pressed():
	staticPlayer.gold -= 1
	
func _save_file(ID):
	stateManager.save_data(ID)
	
