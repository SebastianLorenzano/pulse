settings
settingsOn: aBuilder
<systemsettings>

	(aBuilder group: #pulse)
		parent: #tools;
		label: 'Pulse';
		target: self;
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
		
	(aBuilder button: #resetHistory)
		parent: #pulse;
		target: self;
		description: 'resets the history of environmment entries of Pulse';
		label: 'Reset history';
		buttonLabel: 'Reset'.
		
	(aBuilder button: #resetSize)
		parent: #pulse;
		description: 'resets the stored size of Pulse';
		label: 'Reset size';
		buttonLabel: 'Reset'