extends Camera2D

var camer_power : float = 0
@onready var timer : Timer 

func _ready():
	
	camra_shake.camera = self
	timer = get_node("Timer")
	
	pass	
	
func _physics_process(delta):
	
	offset = Vector2(randf_range(camer_power, -camer_power), randf_range(camer_power, -camer_power)) * delta
	
	pass

func create_shake(shake_power, time_shake):
	
	camer_power = shake_power * 2
	timer.wait_time = time_shake
	timer.start()
	
	pass

func _on_timer_timeout():
	
	camer_power = 0
	
	pass 
