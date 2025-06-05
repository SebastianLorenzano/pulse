*NewTools-Pulse
openPulseEnvironment

	<shortcut>
	^ KMKeymap shortcut: PharoShortcuts current openPulseEnvironmentShortcut action: [ :target | 
		  | selection spot |
		  selection := target selection.
			spot := (self tools toolNamed: #pulse).
		  ( spot isInsertingSelection and: [ selection isNotNil ])
			  ifTrue: [ spot  openWithTextOnEnvironment: selection ]
			  ifFalse: [ spot open ] ]