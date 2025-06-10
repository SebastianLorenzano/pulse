initialization
iconAt: aNumber 

	scales ifNil: [
		scales := ((self iconNamed: #protocolPrivate) 
			"contentsOfArea: (4@4 corner: 12@12)") 
			asGrayScaleWithAlpha 
			scaledToSize: 12@12 ].
	
	^ scales