printing
printOn: aStream

	super printOn: aStream.	
	aStream
		<< '( ';
		print: self content;
		<< ' )'