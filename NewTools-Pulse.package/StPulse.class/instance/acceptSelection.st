private - actions
acceptSelection

	self withWindowDo: [ :aWindow | aWindow close ].
	
	listPresenter selectedItem
		ifNotNil: [ :anEntry |
			| historyEntry |
			(historyEntry := anEntry asHistoryEntry)
				ifNotNil: [ self historize: historyEntry ].
			anEntry accept: self ]