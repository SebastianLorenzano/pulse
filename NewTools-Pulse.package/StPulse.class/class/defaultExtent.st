accessing
defaultExtent

	^ self isShowingPreview 
		ifTrue: [ (750@680) ]
		ifFalse: [ (500@680) ]