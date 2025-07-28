class initialization
reset
	
	pulse ifNotNil: [ 
		pulse withWindowDo: [ :window | window close ].
		pulse := nil ]