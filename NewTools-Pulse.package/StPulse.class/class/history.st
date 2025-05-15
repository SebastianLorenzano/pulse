accessing
history

	^ self basicHistory reject: [ :each | each isNil ]