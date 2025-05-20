private - updating
updateResultListWith: aCollection

	| list |
	list := (aCollection isEmpty and: [ searchPresenter text isEmpty ])
		        ifTrue: [ self historyEntries ]
		        ifFalse: [ aCollection ].
	emptyPresenter visible: list isEmpty.
	"use defer to ensure UI loop"
	self application defer: [
			activePresenter updateItemsKeepingSelection: list.
			(activePresenter selectedItem isNil and: [ list isNotEmpty ])
				ifTrue: [ resultListPresenter selectFirst ] ]