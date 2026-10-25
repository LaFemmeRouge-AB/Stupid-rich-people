extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	$Textbox.visible = false
	$Label.visible = false
	$TextEdit.visible = false
	await get_tree().create_timer(2.0).timeout
	$Twinsr.visible = true
	await get_tree().create_timer(0.1).timeout
	$Twinsr.visible = false
	await get_tree().create_timer(0.1).timeout
	$Twinsr.visible = true
	await get_tree().create_timer(0.1).timeout
	$Twinsr.visible = false
	await get_tree().create_timer(0.1).timeout
	$Twinsr.visible = true
	await get_tree().create_timer(0.1).timeout
	$Twinsr.visible = false
	await get_tree().create_timer(0.1).timeout
	$Twinsr.visible = true
	await get_tree().create_timer(0.1).timeout
	$Twinsr.visible = false
	get_tree().change_scene_to_file("res://scenes/computerboss.tscn")
