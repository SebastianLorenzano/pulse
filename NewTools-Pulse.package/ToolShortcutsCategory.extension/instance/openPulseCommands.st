*NewTools-Pulse
openPulseCommands

	<shortcut>
	^ KMKeymap shortcut: PharoShortcuts current openPulseCommandsShortcut action: [ :target | 
		| selection spot |
		selection := target selection.
		spot := (self tools toolNamed: #pulse).
		(spot isInsertingSelection and: [ selection isNotNil ])
			ifTrue: [ spot  openWithTextOnCommands: selection ]
			ifFalse: [ spot open ] ]