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
				and: self selectedContext = environmentContext ] )
		  	 		ifTrue: [ self historyEntries ]
					ifFalse: [ aCollection ].

			emptyPresenter visible: list isEmpty.
			listPresenter updateItemsKeepingSelection: list.
			(listPresenter selectedItem isNil and: [ list isNotEmpty ])
				ifTrue: [ listPresenter selectFirst ] ] ]