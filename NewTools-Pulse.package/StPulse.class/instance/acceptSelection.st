private - actions
acceptSelection

	self withWindowDo: [ :aWindow | aWindow close ].
	
	activePresenter selectedItem
		ifNotNil: [ :anEntry |
			| historyEntry |
			(historyEntry := anEntry asHistoryEntry)
				ifNotNil: [ self historize: historyEntry ].
			anEntry accept: self ]