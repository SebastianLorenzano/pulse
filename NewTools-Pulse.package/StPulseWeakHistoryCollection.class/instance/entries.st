accessing
entries 

	^ entries 
		ifNil: [ entries := WeakOrderedCollection new: 0]
		ifNotNil: [ 
			self clean. 
			entries ]


