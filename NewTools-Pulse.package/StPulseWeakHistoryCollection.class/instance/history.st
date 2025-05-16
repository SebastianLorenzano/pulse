private - accessing
history 

	^ history 
		ifNil: [ history := WeakOrderedCollection new: self maxEntries ]
		ifNotNil: [ self clean. history ]