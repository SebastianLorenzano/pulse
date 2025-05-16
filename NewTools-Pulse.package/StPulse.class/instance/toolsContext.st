private - accessing
toolsContext

	^ toolsContext ifNil: [ 
		toolsContext := StPulseSearchContext searchTools
			browser: self owner window;
			yourself ]