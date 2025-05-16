accessing
menuEntries 

	^ menuEntries 
		ifNil: [ menuEntries := WeakOrderedCollection new ]
		ifNotNil: [ 
			self cleanMenuEntries. 
			menuEntries ]