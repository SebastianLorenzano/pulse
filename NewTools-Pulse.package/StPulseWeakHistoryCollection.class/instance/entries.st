private - accessing
entries

	^ entries ifNil: [ 
		entries := WeakOrderedCollection new ]