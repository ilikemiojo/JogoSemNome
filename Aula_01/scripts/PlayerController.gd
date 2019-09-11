extends KinematicBody2D

const UP = Vector2(0, -1)
var move = Vector2()
var startPosition = Vector2()

export var speed        = 100
export var jumpForce    = 350
export var gravityScale = 750
export var jumps = 2
var jumpsLeft = 0
var canJump

func _ready():
	jumpsLeft = jumps

func _process(delta):
	move.y += gravityScale * delta
	
	if is_on_floor():
		move.y = 0
		jumpsLeft = jumps
	
	check_if_can_jump()
	
	movement()
	jump()
	
	move_and_slide(move, UP)

func movement():
	if Input.is_action_pressed("ui_left"):
		move.x = -speed
		$AnimatedSprite.flip_h = true
		if is_on_floor():
			$AnimatedSprite.animation = "walk"
	elif Input.is_action_pressed("ui_right"):
		move.x = speed
		$AnimatedSprite.flip_h = false
		if is_on_floor():
			$AnimatedSprite.animation = "walk"
	else:
		move.x = 0
		if is_on_floor():
			$AnimatedSprite.animation = "idle"

func check_if_can_jump():
	if jumpsLeft > 0:
		canJump = true
	else: canJump = false

func jump():
	if canJump:
		if Input.is_action_just_pressed("ui_accept"):
			move.y = -jumpForce
			jumpsLeft -= 1
			$AnimatedSprite.animation = "jump"