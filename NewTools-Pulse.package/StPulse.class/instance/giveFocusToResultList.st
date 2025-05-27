private - actions
giveFocusToResultList

	| lastCharacter |
	lastCharacter := searchPresenter text size + 1.
	searchPresenter selectionInterval: (lastCharacter to: lastCharacter).
	
	listPresenter takeKeyboardFocus