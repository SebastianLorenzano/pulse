styles
styleSheetContribution

	^ SpStyleVariableSTONReader fromString: '
.application [
	.stPulse [ 
		Container { #borderWidth: 2, #borderColor: #transparent },
		Draw { #backgroundColor: #transparent } ],
	.stPulseSearch [ 
		Container { #borderWidth: 0 },
		Draw { #backgroundColor: EnvironmentColor(#background) },
		Font { #size: 12 },
		Geometry { #minHeight: 35, #vResizing: false },
		Text { #drawKeyboardFocus: false } ],
	.stPulseList [
		Container { #borderWidth: 0 },
		Draw { #color: #transparent },
		Geometry { #hResizing: false } ],
	.stPulseRow [  
		Container { #borderWidth: 2 } ],	
	.stPulsePreview [ 
		Draw { #color: #transparent } ],
	.stPulseButton [  
		Draw { #backgroundColor: #transparent, #color: #transparent },
		Container { #borderWidth: 0 } ],
	.stPulseHelp [  
		Geometry { #height: 150, #width: 250 },
		Draw { #backgroundColor: #transparent, #color: #transparent },
		Container { #borderWidth: 1, #borderColor: EnvironmentColor(#background) } ],
	.stPulseLabel [ 
		Geometry { #height: 25},
		Font { #size: 11 } ],
	.stPulseToolbar [ 
		Geometry { #height: 10, #width: 10 }
		 ]
]'