extends Node2D

var direction = 1
const SPEED = 10

@onready var ray_cast_left: RayCast2D = $RayCastLeft
@onready var ray_cast_right: RayCast2D = $RayCastRight

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if ray_cast_left.is_colliding():
		direction = -1
		position.x += SPEED * delta * direction
	if ray_cast_right.is_collidng():
		direction = 1
		position.x += SPEED * delta * direction
