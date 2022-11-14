extends RigidBody2D


func _ready():
	$AnimatedSprite.playing = true
	var mob_types = $AnimatedSprite.frames.get_animation_names()
	$AnimatedSprite.animation = mob_types[randi() % mob_types.size()]



func _on_VisibilityNotifier2D_screen_exited():
	# 超出屏幕范围触发信号 释放对象
	queue_free()
