private - accessing
basicHistory

	^ history ifNil: [ 
		history := WeakOrderedCollection new ]