accessing
entries 

	^ entries 
		ifNil: [ entries := WeakOrderedCollection new ]
		ifNotNil: [ 
			self clean. 
			entries ]


