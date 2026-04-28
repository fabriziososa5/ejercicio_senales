extends Node2D

const INSTANCES_TEXT = "Cantidad de instancias: "
var instancesCount = 0

func _ready():
	$CountLabel.text = INSTANCES_TEXT + str(instancesCount)

func count_new_instance():
	instancesCount += 1
	$CountLabel.text = INSTANCES_TEXT + str(instancesCount)
