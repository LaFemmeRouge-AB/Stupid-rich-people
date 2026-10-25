extends Control

@onready var progress: ProgressBar = $progress_bar
var is_filled: bool = false

func _on_sprite_clicked(clicked_sprite: Sprite2D) -> void:
	for child in get_children():
		if child is Sprite2D:
			if child.has_method("set_active"):
				if child == clicked_sprite:
					child.set_active(true)
				else:
					child.set_active(false)

func _process(_delta: float) -> void:
	if is_filled:
		return
	
	if progress.value >= 100:
		is_filled = true
		on_progress_filled()
		
func on_progress_filled() -> void:
	print("full")
	$textmain.visible = true
	await get_tree().create_timer(5.0).timeout
	$".".visible = false
	get_tree().change_scene_to_file("res://office2.tscn")
