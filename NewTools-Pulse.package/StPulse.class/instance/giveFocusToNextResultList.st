private - actions
giveFocusToNextResultList

	| nextPresenter |
	nextPresenter := paginator pages last = activePresenter 
		ifTrue: [ paginator selectPage: 1 ]
		ifFalse: [ paginator selectPage: (paginator pages indexOf: activePresenter) + 1 ].

	millerList takeKeyboardFocus