private
windowsContext

	^ windowsContext ifNil: [ 
		windowsContext := StPulseSearchContext searchEditors
			browser: self owner root;
			yourself ]