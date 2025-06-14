extends CharacterBody2D

const SPEED = 130.0
const JUMP_VELOCITY = -300.0
var animated_sprite: AnimatedSprite2D

func _ready() -> void:
	animated_sprite = $AnimatedSprite2D

func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity += get_gravity() * delta

	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY
		
	var direction = Input.get_axis("moveLeft", "moveRight")
	animated_sprite.flip_h = direction < 0
	
	if is_on_floor():
		if direction == 0:
			animated_sprite.play("idle")
		else:
			animated_sprite.play("run")
	else:
		animated_sprite.play("jump")
		
	velocity.x = direction * SPEED if direction else move_toward(velocity.x, 0, SPEED)

	move_and_slide()
