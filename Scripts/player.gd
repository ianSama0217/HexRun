extends CharacterBody2D

var speed = 200.0

func _physics_process(delta):					
	if Input.is_action_pressed("ui_right"):
		velocity.x = 1 * speed
	if Input.is_action_pressed("ui_left"):
		velocity.x = -1 * speed
	if Input.is_action_pressed("ui_up"):
		velocity.y = -1 * speed
	if Input.is_action_pressed("ui_down"):
		velocity.y = 1 * speed
		
	move_and_slide()
	


func _on_hitbox_body_entered(body):
	if body.is_in_group("Hex"):
		EndMenu.visible = true
		queue_free()
