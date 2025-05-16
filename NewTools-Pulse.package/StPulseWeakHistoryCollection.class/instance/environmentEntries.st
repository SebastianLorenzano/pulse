accessing
environmentEntries 

	^ environmentEntries 
		ifNil: [ environmentEntries := WeakOrderedCollection new ]
		ifNotNil: [ 
			self cleanEnvironmentEntries. 
			environmentEntries ]