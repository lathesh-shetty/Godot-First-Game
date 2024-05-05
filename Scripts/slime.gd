extends Node2D

@onready var ray_cast_2dr = $RayCast2DR
@onready var ray_cast_2dl = $RayCast2DL

const speed = 60
var direction =1

func _process(delta):
	if ray_cast_2dl.is_colliding():
		direction = 1
	
	if ray_cast_2dr.is_colliding():
		direction = -1
	position.x += direction * speed * delta
