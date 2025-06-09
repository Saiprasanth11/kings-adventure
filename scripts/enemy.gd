extends Node2D

const SPEED = 40
var direction = 1 


var ray_cast_2d_right: RayCast2D
var ray_cast_2d_left: RayCast2D
var animated_sprite: AnimatedSprite2D


func _ready() -> void:
	ray_cast_2d_right = $RayCast2DRight
	ray_cast_2d_left = $RayCast2DLeft
	animated_sprite = $AnimatedSprite2D


func _process(delta: float) -> void:

	if ray_cast_2d_right.is_colliding():
		direction = -1
		animated_sprite.flip_h = true
	elif ray_cast_2d_left.is_colliding():
		direction = 1
		animated_sprite.flip_h = false
	
  
	position.x += delta * direction * SPEED
