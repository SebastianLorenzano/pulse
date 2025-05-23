styles
styleSheetContribution

	^ SpStyleVariableSTONReader fromString: '
.application [
	.stPulse [ 
		Container { #borderWidth: 1, #borderColor: EnvironmentColor(#background) },
		Draw { #backgroundColor: EnvironmentColor(#background) } ],
	.stPulseSearch [ 
		Container { #borderWidth: 0, #borderColor: EnvironmentColor(#background) },
		Draw { #backgroundColor: EnvironmentColor(#lightBackground) },
		Font { #size: 12 },
		Geometry { #minHeight: 35, #vResizing: false },
		Text { #drawKeyboardFocus: false } ],
	.stPulseList [
		Container { #borderWidth: 0, #borderColor: EnvironmentColor(#background) },
		Draw { #color: EnvironmentColor(#background) } ],	
	.stPulsePreview [ 
		Draw { #color: #transparent } ],
	.stPulseHelp [  
		Geometry { #height: 125, #width: 250 },
		Draw { #backgroundColor: EnvironmentColor(#background) },
		Container { #borderWidth: 5, #borderColor: EnvironmentColor(#background) } ] 
]'