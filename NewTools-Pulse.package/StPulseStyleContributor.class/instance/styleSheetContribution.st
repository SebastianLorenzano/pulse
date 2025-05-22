styles
styleSheetContribution

	^ SpStyleVariableSTONReader fromString: '
.application [
	.stPulse [ 
		Container { #borderWidth: 5, #borderColor: EnvironmentColor(#lightBackground) },
		Draw { #backgroundColor: EnvironmentColor(#lightBackground) } ],
	.stPulseSearch [ 
		Draw { #backgroundColor: #transparent },
		Font { #size: 12 },
		Geometry { #minHeight: 35, #vResizing: false },
		Text { #drawKeyboardFocus: false } ],
	.stPulseList [
		Container { #borderWidth: 0 },
		Draw { #color: EnvironmentColor(#lightBackground) } ],	
	.stPulsePreview [ 
		Draw { #color: #transparent } ],
	.stPulseHelp [  
		Geometry { #height: 125, #width: 250 },
		Draw { #backgroundColor: EnvironmentColor(#background) },
		Container { #borderWidth: 5, #borderColor: EnvironmentColor(#background) } ] 
]'