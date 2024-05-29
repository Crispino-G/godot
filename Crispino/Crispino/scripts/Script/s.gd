extends Area2D

const SPEED := 400
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
		var velocity = Input.get_vector("movie_left", "movie_rigth", "movie_up", "movie_down")
		
		if velocity.length() >  0: 
			velocity = velocity.normalized() * SPEED
			
		position += velocity * delta
		
