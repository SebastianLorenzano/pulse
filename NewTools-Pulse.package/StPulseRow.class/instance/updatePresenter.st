initialization
updatePresenter

	self model ifNil: [ ^ self ].
	
	
	iconPresenter image: (self model iconOn: self application).
	namePresenter label: self model label.
	contextPresenter label: self model categoryLabel