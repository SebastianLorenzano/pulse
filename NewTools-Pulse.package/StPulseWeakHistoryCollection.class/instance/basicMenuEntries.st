private - accessing
basicMenuEntries
"It can contain nil as this method evades clean method"

	^ menuEntries ifNil: [ 
		menuEntries := WeakOrderedCollection new ]