extends Node3D

@onready var main = get_tree().current_scene
var Enemy = preload("res://NPC/SWARM/SwarmEnemy.tscn")

func spawn():
	var enemy = Enemy.instance()
	main.add_child(enemy)
	enemy.transform.origin = transform.origin + Vector3(randf_range(-15.0,15.0), randf_range(-10.0,10.0), 0.0)

func _on_Timer_timeout():
	spawn()
