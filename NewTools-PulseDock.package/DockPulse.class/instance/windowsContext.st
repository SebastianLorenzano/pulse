private - accessing
windowsContext

	^ windowsContext ifNil: [ 
		windowsContext := StPulseSearchContext searchEditors ]