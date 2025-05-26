private - updating
updateResultListWith: aCollection

	"use defer to ensure UI loop"
	self updateWorker schedule: [ 
		self application defer: [
			| list |
			'ok' crTrace.
			list := (
				aCollection isEmpty 
				and: [ searchPresenter text isEmpty 
				and: activePresenter = environmentListPresenter ] )
		  	 		ifTrue: [ self historyEntries ]
					ifFalse: [ aCollection ].

			emptyPresenter visible: list isEmpty.
			activePresenter updateItemsKeepingSelection: list.
			(activePresenter selectedItem isNil and: [ list isNotEmpty ])
				ifTrue: [ activePresenter selectFirst ] ] ]