initialization
giveFocusToSearchIfFirstItem

	| aux |
	self haltOnce.
	aux := activePresenter selectedIndex.
	aux = 1
		ifTrue: [ 
			searchPresenter takeKeyboardFocus ]