running
testSmoke

	| window |
	[ self shouldnt: [ 
		SpWindowForceOpenNonModal during: [  window := StPulse open ] ] raise: Error ] ensure: [ window close ].

	[ self shouldnt: [ SpWindowForceOpenNonModal during: [ window := StPulse openWithTextOnEnvironment: '1' ] ] 
		raise: Error ] ensure: [ window close ].

	[ self shouldnt: [ 
		SpWindowForceOpenNonModal during: [ window := StPulse openWithTextOnWindows: '2' ] ]
		raise: Error ] ensure: [ window close ].

	[ self shouldnt: [ 
		SpWindowForceOpenNonModal during: [ window := StPulse openWithTextOnCommands: '3' ] ] 
		raise: Error ] ensure: [ window close ]