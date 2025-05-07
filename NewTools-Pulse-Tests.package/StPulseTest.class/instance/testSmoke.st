running
testSmoke

	| window |
	
	[ self shouldnt: [ window := pulse open ] raise: Error ] ensure: [ window close ].

	[ self shouldnt: [ window := pulse openDialog ] raise: Error ] ensure: [ window close ]