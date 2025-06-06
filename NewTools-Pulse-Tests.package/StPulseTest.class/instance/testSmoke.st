running
testSmoke

	| window |
	
	[ self shouldnt: [ window := pulse open ] raise: Error ] ensure: [ window close ].

	[ self shouldnt: [ window := StPulse openWithTextOnEnvironment: '1' ] raise: Error ] ensure: [ window close ].

	[ self shouldnt: [ window := StPulse openWithTextOnWindows: '2'  ] raise: Error ] ensure: [ window close ].

	[ self shouldnt: [ window := StPulse openWithTextOnCommands: '3' ] raise: Error ] ensure: [ window close ]