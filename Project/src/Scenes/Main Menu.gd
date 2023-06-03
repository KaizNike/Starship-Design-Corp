extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$"Main Menu UI/MenuContainer/VBoxContainer/VersionButton".text = "Version " + str($VersionInfo.version)
	$VI/VICont/VISplit/VScrollBar/VIDataLabel.text = $VersionInfo.info
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$DeskLamp.position = $"Main Menu UI/MenuContainer".rect_position + Vector2(300, 0)


func _on_AnimationPlayer_animation_finished(anim_name):
	print(anim_name)
	if anim_name == "turn_off":
		get_tree().quit()
	pass # Replace with function body.


func _on_QuitButton_pressed():
	$DeskLamp/AnimationPlayer.play("turn_off")
	pass # Replace with function body.


func _on_VersionButton_pressed():
	$VI/VICont.popup_centered()
#	if $VI.visible == true:
#		$VI.visible = false
#	else:
#		$VI.visible = true
	pass # Replace with function body.


func _on_Button_pressed():
	$VI.visible = false
	pass # Replace with function body.


func _on_VIHideButton_pressed():
	$VI.visible = false
	$VI/VICont.hide()
	pass # Replace with function body.
