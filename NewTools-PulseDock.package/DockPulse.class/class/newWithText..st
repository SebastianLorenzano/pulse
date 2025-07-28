instance creation
newWithText: aText

	self reset.
	pulse := self new.
	pulse searchPresenter text: aText.
	^ pulse 