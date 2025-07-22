running
testDefaultKeyboardFocus

	| window |
	[ 
		window := pulse open.
		self
			assert: pulse defaultKeyboardFocus
			equals: pulse listPresenter
	 ] ensure: [ window close ]