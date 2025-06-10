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
	.stPulsePreview [ 
		Draw { #color: #transparent } ],
	.stPulseLabel [ 
		Geometry { #height: 25},
		Font { #size: 11, #name: EnvironmentFont(#default) } ],
	.stPulseRow [  
		Container { #borderWidth: 0 } ],	
	.stPulseRowText [ ],
	.stPulseButton [ 
		Geometry { #height: 150}, 
		Draw { #backgroundColor: EnvironmentColor(#background), #color: EnvironmentColor(#background) },
		Container { #borderWidth: 0 } ],
	.stPulseHelp [  
		Geometry { #height: 250, #width: 380 },
		Draw { #backgroundColor: EnvironmentColor(#background), #color: EnvironmentColor(#background) } ],
	.stPulseToolbar [ 
		Geometry { #height: 10, #width: 10 } ],
	.stPulseSpinner [ 
		Geometry { #height: 10, #width: 10 } ],
	.stPulseLoadingSpinner [ 
		Geometry { #minHeight: 40, #height: 40 } ],
	.stPulsePaginator [ 
		Geometry { #height: 22 } ],
	.stPulsePaginatorLayout [ 
		Geometry { #height: 40 },
		Container { #borderWidth: 3 } ]
]'