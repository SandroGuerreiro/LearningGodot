extends Node2D

signal health_depleted()
signal health_changed(old_value, new_value)

var health = 10

# Called when the node enters the scene tree for the first time.
func _ready():
	Button.connect
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if health > 0:
		print(health)

func take_damage(amount):
	var old_health = health
	health -= amount
	
	if health <= 0:
		health = 0
		health_depleted.emit()
		print('emited')
	
	health_changed.emit(old_health, health)

func _on_button_pressed():
	take_damage(5)
