accessing
initialPageIndex
"This number represents the page index that a StPulse should start with"
"1 = Environment | 2 = Windows | 3 = Commands"
	^ InitialPageIndex ifNil: 
		[ InitialPageIndex := 1 ]