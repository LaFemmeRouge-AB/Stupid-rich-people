extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	$Textbox2.visible = false
	$Label.visible = false
	$TextEdit.visible = false
	await get_tree().create_timer(1.0).timeout
	$Phone.visible = true
	$Button2.visible = true


func _on_button_2_pressed() -> void:
	get_tree().change_scene_to_file("res://darkskyline.tscn")
