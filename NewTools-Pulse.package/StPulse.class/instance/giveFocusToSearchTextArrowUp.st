private - actions
giveFocusToSearchTextArrowUp

	| index |

	listPresenter items ifEmpty: [ 
		searchPresenter takeKeyboardFocus.
		^ self ].

	index := listPresenter selectedIndex.
	index = 1
		ifTrue: [ searchPresenter takeKeyboardFocus ]
		ifFalse: [ listPresenter selectIndex: index - 1 scrollToSelection: true ]