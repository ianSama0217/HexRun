extends Control



# Called when the node enters the scene tree for the first time.
func _ready():
	visible = false
	var canvas_rid = get_canvas_item()
	RenderingServer.canvas_item_set_z_index(canvas_rid, 100)


func _on_restart_button_pressed():
	visible = false
	get_tree().reload_current_scene()


func _on_back_menu_button_pressed():
	visible = false
	get_tree().change_scene_to_file("res://Scenes/main_menu.tscn")


func _on_exit_button_pressed():
	get_tree().quit()
