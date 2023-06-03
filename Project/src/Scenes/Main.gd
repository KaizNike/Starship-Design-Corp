extends Node

#var hours = 650000
#var ticks = 0
#var marks = 0
#var jaunts = 0
#var cycles = 0
var timeCount := 0

var ticksVal = 1
var marksVal = 60000
var jauntsVal = 120000000
var cyclesVal = 10000000000000000

var speedStep = 0
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

onready var timeSlide = $UI/HSplitContainer/PanelContainer/VBoxContainer/TimeSlider
onready var timeLabel = $UI/HSplitContainer/PanelContainer/VBoxContainer/TimeLabel
# Called when the node enters the scene tree for the first time.
func _ready():
#	print("Pretty good, I spent " + str(hours) + " hours on making an idle game.")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	process_Time(delta)
#	ticks += 1
#	timeLabel.text = str(int(cycles)) + " C\n" + str(int(jaunts)) + " J\n" + str(int(marks)) + " M\n" + str(int(ticks)) + " T"


#func _physics_process(delta):
#	pass


func _on_TimeSlider_value_changed(value):
	speedStep = value
	print(speedStep)
	print(typeof(speedStep))
	pass # Replace with function body.


func process_Time(delta):
	time_step_match(delta)
	var cycles = timeCount / cyclesVal
	var jaunts = (timeCount % cyclesVal) / jauntsVal
	var marks = (timeCount % jauntsVal) / marksVal
	var ticks = (timeCount % marksVal) / ticksVal
	timeLabel.text = str(int(cycles)) + " C\n" + str(int(jaunts)) + " J\n" + str(int(marks)) + " M\n" + str(int(ticks)) + " T"


func time_step_match(delta):
	
#	print(speedStep)
	match(int(speedStep)):
		0:
#			print("running")
			pass
		1:
			timeCount += 1
		2:
			timeCount += marksVal * delta
		3:
			timeCount += jauntsVal * delta
		4:
			timeCount += jauntsVal
#			cycles *= 1.2
		_:
#			print("other")
			pass
	pass
