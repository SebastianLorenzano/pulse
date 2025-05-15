private
basicHistory

	^ History ifNil: [ History := WeakOrderedCollection new ]