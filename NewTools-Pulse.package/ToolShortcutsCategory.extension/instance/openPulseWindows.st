*NewTools-Pulse
openPulseWindows

	<shortcut>
	^ KMKeymap shortcut: PharoShortcuts current openPulseWindowsShortcut action: [ :target | 
		| selection spot |
		selection := target selection.
		spot := (self tools toolNamed: #pulse).
		(spot insertsSelection and: [ selection isNotNil ])
			ifTrue: [ spot  openWithTextOnWindows: selection ]
			ifFalse: [ spot openWithTextOnWindows: '' ] ]