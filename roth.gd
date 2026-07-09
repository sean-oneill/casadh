extends Area2D

const MAX_ROTATION = 10
const MIN_ROTATION = 0
var rotation_speed = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	rotation += rotation_speed * delta
	if rotation_speed > MIN_ROTATION:
		rotation_speed -= 1 * delta
		
	if rotation_speed < MIN_ROTATION:
		rotation_speed = MIN_ROTATION


func _on_hud_spin_wheel() -> void:
	rotation_speed += 1
	if rotation_speed > MAX_ROTATION:
		rotation_speed = MAX_ROTATION
