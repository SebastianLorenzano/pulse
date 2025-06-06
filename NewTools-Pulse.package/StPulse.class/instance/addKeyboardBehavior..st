initialization
addKeyboardBehavior: aPresenter

	aPresenter 
		addShortcutWith: [ :action | action 
			shortcutKey: Character arrowUp asKeyCombination;
			action: [ self giveFocusToSearchTextArrowUp ] ];
		addShortcutWith: [ :action | action 
			shortcutKey: Character arrowDown asKeyCombination;
			action: [ self giveFocusToSearchTextArrowDown ] ];
		addShortcutWith: [ :action | action 
			shortcutKey: Character arrowLeft asKeyCombination;
			action: [ self giveFocusToPreviousResultList ] ];
		addShortcutWith: [ :action | action 
			shortcutKey: Character arrowRight asKeyCombination;
			action: [ self giveFocusToNextResultList ] ];
		addShortcutWith: [ :action | action 
			shortcutKey: KeyboardKey right asKeyCombination actionModifier;
			action: [ self giveFocusToNextResultList ] ];
		addShortcutWith: [ :action | action 
			shortcutKey: KeyboardKey left asKeyCombination actionModifier;
			action: [ self giveFocusToPreviousResultList ] ].
	
	aPresenter eventHandler whenKeyDownDo: [ :anEvent | 
			"28 = Left Arrow | 29 = Right Arrow | 30 = Arrow up | 31 = Arrow down"
			(#(28 29 30 31) includes: anEvent keyValue )
				ifFalse:  [ searchPresenter takeKeyboardFocus ] ]


	