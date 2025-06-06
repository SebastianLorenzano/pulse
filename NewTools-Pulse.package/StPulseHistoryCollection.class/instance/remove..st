accessing
remove: aStEntry

	entries removeAllSuchThat: [ :each | 
		each isNil 
		or: [ each contentString = aStEntry contentString 
		or: [ each contentString isNil ] ] ]