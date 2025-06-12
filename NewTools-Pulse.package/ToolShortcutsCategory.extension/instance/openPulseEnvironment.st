*NewTools-Pulse
openPulseEnvironment
"This code has a bridge to be able to change between using StPulse (new Spotter) or StSpotter (old Spotter), while it is being tested. Will eventually be removed."
	<shortcut>
	^ KMKeymap shortcut: PharoShortcuts current openPulseEnvironmentShortcut action: [ :target | 
		| selection spot |
		selection := target selection.
		spot := (self tools toolNamed: #pulse).
		spot activated 
			ifTrue: [  
				(spot insertsSelection and: [ selection isNotNil ])
					ifTrue: [ spot  openWithTextOnEnvironment: selection ]
					ifFalse: [ spot openWithTextOnEnvironment: '' ] ]
			ifFalse: [ 
				spot := (self tools toolNamed: #spotter).
		  		(spot insertsSelection and: [ selection isNotNil ])
			  		ifTrue: [ spot  openWithText: selection ]
			  		ifFalse: [ spot open ] ] ]