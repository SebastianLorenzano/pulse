settings
isInsertingSelection

	^ InsertsSelection ifNil: [ 
		InsertsSelection := false ]