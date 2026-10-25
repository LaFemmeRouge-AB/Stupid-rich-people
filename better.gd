extends Sprite2D

@export var normal : Texture2D
@export var meh : Texture2D

var is_dragged: bool = false
var drag_offset: Vector2 = Vector2.ZERO
var smooth_speed: float = 15.0

func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if event.pressed:
			if get_rect().has_point(to_local(get_global_mouse_position())):
				is_dragged = true
				drag_offset = global_position - get_global_mouse_position()
		else:
			is_dragged = false

func _process(delta: float) -> void:
	if is_dragged:
		var target_pos: Vector2 = get_global_mouse_position() + drag_offset
		global_position = global_position.lerp(target_pos, smooth_speed * delta)

func set_filled(is_filled: bool) -> void:
	texture = meh if is_filled else normal
