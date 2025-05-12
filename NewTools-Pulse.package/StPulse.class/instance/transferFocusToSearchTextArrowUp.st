private
transferFocusToSearchTextArrowUp

	| index |

	activePresenter items ifEmpty: [ ^ self ].

	index := activePresenter selectedIndex.
	index  = 1
		ifTrue: [ searchPresenter takeKeyboardFocus ]
		ifFalse: [ activePresenter selectIndex: index - 1 scrollToSelection: true ]