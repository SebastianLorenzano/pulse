private - actions
acceptSelection

	self withWindowDo: [ :aWindow | aWindow close ].
	activePresenter selectedItem 
		ifNotNil: [ :anEntry | 
			self historize: anEntry.
			anEntry accept: self ]