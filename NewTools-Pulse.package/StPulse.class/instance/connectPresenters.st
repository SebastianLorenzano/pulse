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
			action: [ self giveFocusToResultListAtLast ] ];
		addShortcutWith: [ :action | action 
			shortcutKey: KeyboardKey down asKeyCombination actionModifier;
			action: [ self findAllButtonAction ] ].
	listPresenter 
		whenActivatedDo: [ self acceptSelection ];
		whenSelectionChangedDo:[ self calculateListCounterPresenter ].
	self addKeyboardBehavior: listPresenter.
	
	paginator whenSelectedPageChangedDo: [ :newValue |
		self application defer: [ 
			self updateActivePresenter: newValue ] ]