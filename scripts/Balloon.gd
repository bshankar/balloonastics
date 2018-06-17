extends KinematicBody2D

const INIT_VELOCITY = Vector2(400, -200)
const FRICTION = Vector2(0.99, 1)
var velocity = Vector2(0, 0)

func _ready():
	velocity = INIT_VELOCITY
	
func _physics_process(delta):
	velocity *= FRICTION
	velocity = move_and_slide(velocity)