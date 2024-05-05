extends Timer

var hex_scene = preload("res://Objects/hex.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	call_deferred("spaw_hex")
	
func spaw_hex():
	var hex_node = hex_scene.instantiate()
	var rng = randf_range(0,1)
	hex_node.rotation = PI / 6 * floor(rng * 11)
	get_tree().current_scene.add_child(hex_node)

func _on_timeout():
	spaw_hex()
