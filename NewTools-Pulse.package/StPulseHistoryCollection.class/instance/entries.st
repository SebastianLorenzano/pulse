accessing
entries 

	^ entries 
		ifNil: [ entries := OrderedCollection new]
		ifNotNil: [ 
			self clean. 
			entries ]


