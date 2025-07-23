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
		Container { #intercellSpacing: 1, #rowHeight: 26  },
		Draw { #color: #transparent },
		Geometry { #hResizing: false } ],
	.stPulseLabel [ 
		Geometry { #height: 25},
		Font { #size: 11, #name: EnvironmentFont(#default) } ],
	.stPulseRow [  
		Container { #borderWidth: 0 } ],	
	.stPulseButton [ 
		Draw { #backgroundColor: EnvironmentColor(#background), #color: EnvironmentColor(#background) },
		Container { #borderWidth: 0 } ],
	.stPulseHelp [  
		Geometry { #height: 308, #width: 380 },
		Draw { #backgroundColor: EnvironmentColor(#background), #color: EnvironmentColor(#background) } ],
	.stPulseInvisibleLabel [ 
		Geometry { #width: 150 } ],
	.stPulseToolbar [ 
		Geometry { #height: 50, #width: 50 } ],
	.stPulseSpinner [ 
		Geometry { #height: 40, #width: 150 } ],
	.stPulsePaginator [ 
		Geometry { #height: 22 } ],
	.stPulsePaginatorLayout [ 
		Geometry { #height: 40 },
		Container { #borderWidth: 3 } ]
]'