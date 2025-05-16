accessing
history

	^ History ifNil: [ 
		History := StPulseWeakHistoryCollection new ]