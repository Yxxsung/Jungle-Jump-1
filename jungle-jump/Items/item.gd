extends Area2D

signal picked_up
var textures = {
	"cherry": "res://assets/cherry_spawn.png",
	"gem": "res://assets/gem_spawn.png"
}

func _init(type,_position):
	$Sprite2D.texture = load(textures[type])
	position = _position

func _on_body_entered(_body):
	picked_up.emit()
	queue_free()
