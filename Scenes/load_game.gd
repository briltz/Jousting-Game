extends Control

var staticPlayer
var stateManager

# Called when the node enters the scene tree for the first time.
func _ready():
	staticPlayer = get_node("/root/StaticPlayer")
	stateManager = get_node("/root/StateManager")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_back_pressed():
	get_tree().change_scene_to_file("res://Scenes/Main Menu.tscn")


func _on_slot_1_pressed():
	staticPlayer.profile = 1
	stateManager.load_data(1)
	get_tree().change_scene_to_file("res://Scenes/Home.tscn")


func _on_slot_2_pressed():
	staticPlayer.profile = 2
	stateManager.load_data(2)
	get_tree().change_scene_to_file("res://Scenes/Home.tscn")


func _on_slot_3_pressed():
	staticPlayer.profile = 3
	stateManager.load_data(3)
	get_tree().change_scene_to_file("res://Scenes/Home.tscn")
