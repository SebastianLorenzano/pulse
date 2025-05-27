private - actions
giveFocusToSearchTextArrowDown

	| index first |
	
	listPresenter items ifEmpty: [ ^ self ].
	first := 1.
	index := listPresenter selectedIndex.
	index  = listPresenter items size
		ifTrue: [ listPresenter selectIndex: first scrollToSelection: true ]
		ifFalse: [ listPresenter selectIndex: index + 1 scrollToSelection: true ].
		
	listPresenter takeKeyboardFocus