private - updating
updateResultListWith: aCollection
	
	"use defer to ensure UI loop"
	self application defer: [
		emptyPresenter visible: aCollection isEmpty.
		activePresenter updateItemsKeepingSelection: aCollection.
		(activePresenter selectedItem isNil 
			and: [ aCollection isNotEmpty ])
			ifTrue: [ resultListPresenter selectFirst ] ]