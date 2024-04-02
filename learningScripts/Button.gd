extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_node_2d_health_depleted():
	print('Button ahhh')
	self.disabled = true
