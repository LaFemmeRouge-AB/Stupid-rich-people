extends Sprite2D

@export var normal = Texture2D
@export var hover = Texture2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_area_2d_area_entered(area: Area2D) -> void:
	if area.is_in_group("emails"):
		var root_of_incoming_object = area.get_tree().current_scene.find_child(area.name, true, false).get_parent()
	
		if area.get_parent():
			area.get_parent().visible = false
		else:
			area.visible = false
		
		var bar = $"../progress_bar"
		if bar:
			bar.value += 14.2857
			print("Bar value changed to: ", bar.value)
