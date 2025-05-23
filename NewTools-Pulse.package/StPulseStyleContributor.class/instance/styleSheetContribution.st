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
	.stPulsePreview [ 
		Draw { #color: #transparent } ],
	.stPulseHelp [  
		Geometry { #height: 125, #width: 250 },
		Draw { #backgroundColor: EnvironmentColor(#background) },
		Container { #borderWidth: 5, #borderColor: EnvironmentColor(#background) } ] 
]'