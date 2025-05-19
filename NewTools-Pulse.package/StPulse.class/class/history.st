accessing
history

	^ History ifNil: [ 
		History := StPulseHistoryCollection new ]