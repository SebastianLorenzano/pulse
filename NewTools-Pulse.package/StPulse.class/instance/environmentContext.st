private
environmentContext

	^ environmentContext ifNil: [ 
		environmentContext := StPulseSearchContext searchEnvironment
			browser: self owner window;
			yourself ]