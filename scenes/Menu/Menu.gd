extends Node2D

const INSTANCES_TEXT = "Cantidad de instancias: "
var instancesCount = 0

@onready var count_label = $CountLabel
@onready var red_button = $RedGenerator/TextureButton
@onready var violet_button = $VioletGenerator/TextureButton

func _ready():
	$CountLabel.text = INSTANCES_TEXT + str(instancesCount)

	red_button.button_down.connect(count_new_instance)
	violet_button.button_down.connect(count_new_instance)

func count_new_instance():
	instancesCount += 1
	$CountLabel.text = INSTANCES_TEXT + str(instancesCount)
