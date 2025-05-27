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
	environmentListPresenter whenActivatedDo: [ self acceptSelection ].
	editorListPresenter whenActivatedDo: [ self acceptSelection ].
	toolListPresenter whenActivatedDo: [ self acceptSelection ].
	self addKeyboardBehavior: environmentListPresenter.
	self addKeyboardBehavior: editorListPresenter.
	self addKeyboardBehavior: toolListPresenter.
	
	paginator whenSelectedPageChangedDo: [ :newValue |
		self application defer: [ 
			self updateActivePresenter: newValue ] ]
