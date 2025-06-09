extends Area2D

var game_manager: Node
var animation_player: AnimationPlayer

func _ready() -> void:
	game_manager = get_node("%GameManager")
	animation_player = $AnimationPlayer

func _on_body_entered(_body: Node2D) -> void:
	game_manager.add_point()
	animation_player.play("pickup")
