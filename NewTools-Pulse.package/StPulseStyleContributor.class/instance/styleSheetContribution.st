styles
styleSheetContribution

	^ SpStyleVariableSTONReader fromString: '
.application [
	.stPulse [ 
		Container { #borderWidth: 5, #borderColor: EnvironmentColor(#background) },
		Draw { #backgroundColor: EnvironmentColor(#background) } ],
	.stPulseSearch [ 
		Draw { #backgroundColor: EnvironmentColor(#lightBackground) },
		Font { #size: 12 },
		Geometry { #minHeight: 35, #vResizing: false },
		Text { #drawKeyboardFocus: false } ],
	.stPulseList [
		Container { #borderWidth: 5, #borderColor: #blue },
		Draw { #color: #transparent } ],
	.stPulseTab [
		Container { #borderWidth: 7, #borderColor: #red },
		Draw { #color: #transparent } ],
	.stPulsePreview [ 
		Draw { #color: #transparent } ],
	.stPulseHelp [  
		Geometry { #height: 125, #width: 250 },
		Draw { #backgroundColor: EnvironmentColor(#background) },
		Container { #borderWidth: 5, #borderColor: EnvironmentColor(#background) } ] 
]'