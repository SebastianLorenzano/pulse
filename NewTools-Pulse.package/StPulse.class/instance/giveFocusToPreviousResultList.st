private - actions
giveFocusToPreviousResultList
	| prevPresenter |

	prevPresenter := tabLayout children first = activePresenter 
		ifTrue: [ tabLayout children last ]
		ifFalse: [ tabLayout children before: activePresenter ].
		
	tabLayout select: prevPresenter.
	activePresenter takeKeyboardFocus