private - accessing
basicEnvironmentEntries
"It can contain nil as this method evades clean method"

	^ environmentEntries ifNil: [ 
		environmentEntries := WeakOrderedCollection new ]