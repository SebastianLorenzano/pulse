private - actions
giveFocusToSearchTextArrowUp

	| index |

	activePresenter items ifEmpty: [ 
		searchPresenter takeKeyboardFocus.
		^ self ].
	index := activePresenter selectedIndex.
	index = 1
		ifTrue: [ searchPresenter takeKeyboardFocus ]
		ifFalse: [ activePresenter selectIndex: index - 1 scrollToSelection: true ]