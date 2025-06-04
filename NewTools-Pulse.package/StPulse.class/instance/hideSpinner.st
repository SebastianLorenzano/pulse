private - actions
hideSpinner

	spinner isVisible ifFalse: [ ^ self ].
	self application defer: [ spinner hide ]