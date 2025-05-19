private - actions
acceptSelection

	self withWindowDo: [ :aWindow | aWindow close ].
	activePresenter selectedItem 
		ifNotNil: [ :anEntry | 
			| historyEntry |
			historyEntry := anEntry asHistoryEntry.
			self historize: historyEntry.
			historyEntry accept: self ]