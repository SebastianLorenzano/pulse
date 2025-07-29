settings
settingsOn: aBuilder
"<systemsettings>

	(aBuilder group: #pulse)
		parent: #tools;
		label: 'Pulse';
		target: self;
		description: 'Pulse configuration'.

	(aBuilder setting: #previewVisible)
		parent: #pulse;
		default: true;
		target: self;
		description: 'Show the preview panel';
		label: 'Show Preview Panel'.
		
	(aBuilder setting: #insertsSelection)
		parent: #pulse;
		default: false;
		target: self;
		description: 'When opening pulse, insert the selected content into the search bar';
		label: 'Inserts Selection'.
		
	(aBuilder button: #resetHistory)
		parent: #pulse;
		target: self;
		description: 'Resets the history of environmment entries of Pulse';
		label: 'Reset history';
		buttonLabel: 'Reset'.
		
	(aBuilder button: #resetSize)
		parent: #pulse;
		description: 'Resets the stored size of Pulse, which can be changed at any time and will be remembered';
		label: 'Reset size';
		buttonLabel: 'Reset'"