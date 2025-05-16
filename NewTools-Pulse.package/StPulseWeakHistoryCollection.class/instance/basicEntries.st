private - accessing
basicEntries
"It can contain nil as this method evades clean method"

	^ entries ifNil: [ 
		entries := WeakOrderedCollection new ]