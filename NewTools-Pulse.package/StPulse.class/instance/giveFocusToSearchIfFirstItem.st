initialization
giveFocusToSearchIfFirstItem

	| aux |

	aux := activePresenter selectedIndex.
	aux = 1
		ifTrue: [ 
			searchPresenter takeKeyboardFocus ]