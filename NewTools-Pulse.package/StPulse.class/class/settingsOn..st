settings
settingsOn: aBuilder
<systemsettings>

	(aBuilder group: #pulse)
		parent: #tools;
		label: 'Pulse';
		description: 'Pulse configuration'.

	(aBuilder setting: #previewVisible)
		parent: #pulse;
		default: true;
		target: self;
		description: 'show the preview panel';
		label: 'Show Preview Panel'.
		
	(aBuilder setting: #insertsSelection)
		parent: #pulse;
		default: true;
		target: self;
		description: 'when opening pulse, insert the selected content into the search bar';
		label: 'Inserts Selection'.