initialization
addKeyboardBehavior: aPresenter

	aPresenter whenActivatedDo: [ self acceptSelection ].
	aPresenter 
		addShortcutWith: [ :action | action 
			shortcutKey: Character arrowUp asKeyCombination;
			action: [ self transferFocusToSearchTextArrowUp ] ];
		addShortcutWith: [ :action | action 
			shortcutKey: Character arrowDown asKeyCombination;
			action: [ self transferFocusToSearchTextArrowDown ] ];
		addShortcutWith: [ :action | action 
			shortcutKey: Character arrowLeft asKeyCombination;
			action: [ self giveFocusToPreviousResultList ] ];
		addShortcutWith: [ :action | action 
			shortcutKey: Character arrowRight asKeyCombination;
			action: [ self giveFocusToNextResultList ] ].
	
	aPresenter eventHandler whenKeyDownDo: [ :anEvent | 
			"28 = Left Arrow | 29 = Right Arrow | 30 = Arrow up | 31 = Arrow down"
			(#(28 29 30 31) includes: anEvent keyValue )
				ifFalse:  [ searchPresenter takeKeyboardFocus ] ]


	