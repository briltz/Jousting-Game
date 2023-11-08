extends Control

var staticPlayer

# Called when the node enters the scene tree for the first time.
func _ready():
	staticPlayer = get_node("/root/StaticPlayer")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_play_pressed():
	staticPlayer.reset()
	get_tree().change_scene_to_file("res://Scenes/Home.tscn")


func _on_options_pressed():
	get_tree().change_scene_to_file("res://Scenes/Options Menu.tscn")


func _on_quit_pressed():
	get_tree().quit()


func _on_debug_pressed():
	get_tree().change_scene_to_file("res://Scenes/Test.tscn")


func _on_load_game_pressed():
	get_tree().change_scene_to_file("res://Scenes/Load Game.tscn")
