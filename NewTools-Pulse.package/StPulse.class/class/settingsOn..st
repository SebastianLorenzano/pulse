settings
settingsOn: aBuilder
" TODO:	<systemsettings>

	(aBuilder group: #pulse)
		parent: #tools;
		label: 'Pulse';
		description: 'Pulse configuration'.

	(aBuilder setting: #pulse)
		parent: #pulse;
		default: self isShowingPreview;
		target: self;
		description: 'If Pulse will show the preview panel on the right of pulse';
		label: 'Show Preview Panel'."