extends Area3D

const SPEED = 20.0
const range = 40.0

var travelled_distance = 0.0


func _physics_process(delta):
	position += -transform.basis.z * SPEED * delta
	travelled_distance += SPEED * delta
	if travelled_distance > range:
		queue_free()
	
