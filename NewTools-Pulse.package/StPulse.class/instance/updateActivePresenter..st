initialization
updateActivePresenter: newValue		
	| newActivePresenter | 

	newActivePresenter := paginator pages at: newValue.
	listLayout
		replace: activePresenter
		with: newActivePresenter.
	activePresenter := newActivePresenter.
	"self updateListLabel"