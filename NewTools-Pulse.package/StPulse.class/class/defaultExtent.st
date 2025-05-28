accessing
defaultExtent

	^ self isShowingPreview 
		ifTrue: [ (750@650) ]
		ifFalse: [ (500@650) ]