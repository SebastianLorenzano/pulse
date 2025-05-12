private
transferFocusToSearchTextArrowDown

	| index first |
	
	activePresenter items ifEmpty: [ ^ self ].
	first := 1.
	index := activePresenter selectedIndex.
	index  = activePresenter items size
		ifTrue: [ activePresenter selectIndex: first scrollToSelection: true ]
		ifFalse: [ activePresenter selectIndex: index + 1 scrollToSelection: true ]