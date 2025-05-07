private - actions
acceptSelection

	self withWindowDo: [ :aWindow | aWindow close ].
	activePresenter selectedItem 
		ifNotNil: [ :anEntry | anEntry accept: self ]