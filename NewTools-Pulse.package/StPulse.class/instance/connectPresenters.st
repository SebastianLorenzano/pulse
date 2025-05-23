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
	self addKeyboardBehavior: environmentListPresenter.
	self addKeyboardBehavior: editorListPresenter.
	self addKeyboardBehavior: toolListPresenter.
	
	self addToMillerList: environmentListPresenter.
	self addToMillerList: editorListPresenter.
	self addToMillerList: toolListPresenter.
	paginator 
		whenSelectedPageChangedDo: [ :newValue |
			| newActivePresenter | 
			newActivePresenter := paginator pages at: newValue.
			activePresenter ifNotNil: [ 
				listLayout replace: activePresenter with: newActivePresenter	 ].
			activePresenter := newActivePresenter.	
			self updateListLabel ] ;
		selectPage: (self class tabIndexToOpenAtStart)