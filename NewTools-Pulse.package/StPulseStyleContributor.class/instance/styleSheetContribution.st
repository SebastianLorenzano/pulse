styles
styleSheetContribution

	^ SpStyleVariableSTONReader fromString: '
.application [
	.pulseHelp [  
		Geometry { #height: 125, #width: 250 },
		Container { #borderWidth: 5, #borderColor: EnvironmentColor(#background) },
		Draw { #backgroundColor: EnvironmentColor(#background) } ] 
]'