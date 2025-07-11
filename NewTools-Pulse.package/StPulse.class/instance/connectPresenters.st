initialization
connectPresenters

	searchPresenter 
		whenSubmitDo: [ :aString | self acceptSelection ];
		addShortcutWith: [ :action | action 
			shortcutKey: KeyboardKey down asKeyCombination;
			action: [ self giveFocusToResultList ] ];
		addShortcutWith: [ :action | action 
			shortcutKey: KeyboardKey right asKeyCombination actionModifier;
			action: [ self giveFocusToNextResultList ] ];
		addShortcutWith: [ :action | action 
			shortcutKey: KeyboardKey left asKeyCombination actionModifier;
			action: [ self giveFocusToPreviousResultList ] ];
		addShortcutWith: [ :action | action 
			shortcutKey: Character arrowUp asKeyCombination;
			action: [ self giveFocusToResultListAtLast ] ] ;
		takeKeyboardFocus.
	listPresenter whenActivatedDo: [ self acceptSelection ].
	self addKeyboardBehavior: listPresenter.
	
	paginator whenSelectedPageChangedDo: [ :newValue |
		self application defer: [ 
			self updateActivePresenter: newValue ] ]
