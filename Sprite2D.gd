extends Sprite2D

func  _physics_process(delta):
	
	if Input.is_action_just_pressed("spase"):
		
		camra_shake.camera.create_shake(100, 1)
		
		pass
	
	pass
