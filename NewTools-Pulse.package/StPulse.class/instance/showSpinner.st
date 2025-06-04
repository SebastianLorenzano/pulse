private - actions
showSpinner

	spinner isVisible ifTrue: [ ^ self ].
	self application defer: [ spinner show ]