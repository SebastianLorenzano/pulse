private - accessing
basicEntries

	^ entries ifNil: [ 
		entries := WeakOrderedCollection new ]