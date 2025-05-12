private
giveFocusToNextResultList
	| nextPresenter |

	nextPresenter := tabLayout children last = activePresenter 
		ifTrue: [ tabLayout children first ]
		ifFalse: [ tabLayout children after: activePresenter ].

	tabLayout select: nextPresenter.
	activePresenter takeKeyboardFocus