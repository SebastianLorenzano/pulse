private - actions
giveFocusToPreviousResultList

	| prevPresenter |
	prevPresenter := paginator pages first = activePresenter 
		ifTrue: [ paginator selectPage: paginator pages size ]
		ifFalse: [ paginator selectPage: (paginator pages indexOf: activePresenter) - 1 ].
	millerList takeKeyboardFocus