extends Sprite3D

var distancee
@onready var player = get_tree().get_first_node_in_group("user")
@onready var camera = player.get_node("Camera")  # Adjust path if needed
var original_camera_transform  # Store the full transform, not just position
var move_camera = false  # Flag to track if the camera should move to the front
var return_camera = false  # Flag to track if the camera should return

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if camera:
		# Save the original full transform for accurate reset
		original_camera_transform = camera.global_transform
	else:
		print("Camera not found. Check camera path or setup.")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if not player or not camera:
		return
	
	# Calculate distance between the object and the player
	distancee = global_transform.origin.distance_to(player.global_transform.origin)
	
	# If player is close enough and 'E' is pressed, move the camera to the front
	if distancee <= 1.0 and Input.is_key_pressed(KEY_E):
		#DialogueLabel.
		pass
	
