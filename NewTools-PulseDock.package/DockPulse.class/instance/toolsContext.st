private - accessing
toolsContext

	^ toolsContext ifNil: [ 
		toolsContext := StPulseSearchContext searchTools ]