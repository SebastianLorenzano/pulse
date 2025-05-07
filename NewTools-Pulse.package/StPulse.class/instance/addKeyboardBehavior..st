initialization
addKeyboardBehavior: aPresenter

	aPresenter eventHandler whenKeyDownDo: [ :anEvent | 
		"28 = Left Arrow"
		anEvent keyValue = 28
			ifTrue: [ self giveFocusToPreviousResultList ].
		"29 = Right Arrow"
		anEvent keyValue = 29
			ifTrue: [ self giveFocusToNextResultList ].
		"30 = Arrow up | 31 = Arrow down"
		(#(28 29 30 31) includes: anEvent keyValue )
			ifFalse:  [ searchPresenter takeKeyboardFocus ] ]
	