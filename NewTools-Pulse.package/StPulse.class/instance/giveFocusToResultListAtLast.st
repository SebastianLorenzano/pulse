private
giveFocusToResultListAtLast
	
	| aux |
	
	activePresenter takeKeyboardFocus.
	aux := activePresenter items size.
	activePresenter selectIndex:  aux scrollToSelection: true
	