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
		Container { #borderWidth: 0 , #intercellSpacing: 1, #rowHeight: 26  },
		Draw { #color: #transparent },
		Geometry { #hResizing: false } ],
	.stPulsePreview [ 
		Draw { #color: #transparent } ],
	.stPulseLabel [ 
		Geometry { #height: 25},
		Font { #size: 11, #name: EnvironmentFont(#default) } ],
	.stPulseRow [  
		Container { #borderWidth: 3 } ],	
	.stPulseRowText [ ],
	.stPulseButton [ 
		Geometry { #height: 150}, 
		Draw { #backgroundColor: #transparent, #color: #transparent },
		Container { #borderWidth: 0 } ],
	.stPulseHelp [  
		Geometry { #height: 240, #width: 360 },
		Draw { #backgroundColor: #transparent, #color: #transparent } ],
	.stPulseToolbar [ 
		Geometry { #height: 10, #width: 10 } ]
]'