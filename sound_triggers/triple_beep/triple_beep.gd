extends Area2D

func _on_body_entered(_body):
	var audio_stream_player := AudioStreamPlayer.new()
	audio_stream_player.stream = load("res://sound_triggers/triple_beep/triple_beep.wav")
	get_parent().add_child(audio_stream_player)
	audio_stream_player.play()
	audio_stream_player.finished.connect(func():
		audio_stream_player.queue_free()
	)
