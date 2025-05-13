accessing
defaultExtent

	^ self isShowingPreview 
		ifTrue: [ (850@680) ]
		ifFalse: [ (500@680) ]