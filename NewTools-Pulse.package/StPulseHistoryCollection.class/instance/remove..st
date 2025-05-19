accessing
remove: aStEntry

	entries removeAllSuchThat: [ :each | 
		each entry = aStEntry entry 
		or: [ each entry content isNil ] ]