private - accessing
environmentContext

	^ environmentContext ifNil: [ 
		environmentContext := StPulseSearchContext searchEnvironment ]