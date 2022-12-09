extends Spatial

onready var monster = $GridMap/Monster
onready var player = $GridMap/Player
onready var orb_container = $GridMap/OrbContainer

var collected_orbs = 0
var total_orb_count = 0

func _ready():
	monster.set_target(player)
	
	
	player.connect("orb_collected", self, "on_orb_collected")
	
	
func on_orb_collected():
		collected_orbs += 1
		if collected_orbs >= total_orb_count:
			print("You won")
