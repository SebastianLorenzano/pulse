accessing
remove: aStEntry

	entries removeAllSuchThat: [ :each | 
		each contentString = aStEntry contentString 
		or: [ each contentString isNil ] ]