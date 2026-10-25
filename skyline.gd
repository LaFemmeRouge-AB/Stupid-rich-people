extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	await get_tree().create_timer(1.0).timeout
	$TextEdit.visible = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	$TextEdit.visible = false
	$TextEdit2.visible = true
	await get_tree().create_timer(2.0).timeout
	get_tree().change_scene_to_file("res://office.tscn")
	
