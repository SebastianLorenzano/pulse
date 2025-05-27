private - updating
updateActivePresenter: newValue		
		
	| newActivePresenter | 
	
	newActivePresenter := paginator pages at: newValue.
	listLayout
		replace: activePresenter
		with: newActivePresenter.
	activePresenter := newActivePresenter.
	activePresenter takeKeyboardFocus.
	self updateListLabel