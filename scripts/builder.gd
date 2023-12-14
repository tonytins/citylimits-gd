extends Node2D

@export var structures: Array[Structure] = []

var map:DataMap

var index:int = 0 # Index of structure being built

@export var selector:Node2D # The 'cursor'
@export var selector_container:Node2D # Node that holds a preview of the structure
@export var view_camera:Camera2D # Used for raycasting mouse
@export var tile_map:TileMap
@export var cash_display:Label

func _ready():
	
	map = DataMap.new()
	
	
func update_cash():
	cash_display.text = "$" + str(map.cash)
