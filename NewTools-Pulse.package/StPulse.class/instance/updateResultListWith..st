private - updating
updateResultListWith: aCollection
	"use defer to ensure UI loop" 
	self updateWorker schedule: [ 
		self application defer: [
				| list |
				list := (
					aCollection isEmpty 
					and: [ searchPresenter text isEmpty 
					and: self selectedContext = environmentContext ] )
		 	 	 		ifTrue: [ 	
								self hideSpinner. 
								self historyEntries ]
						ifFalse: [ aCollection ].
				emptyPresenter visible: list isEmpty.
				listPresenter disableActivationDuring: [ listPresenter items: list ].
				list isNotEmpty
					ifTrue: [ listPresenter selectFirst ] ] ]