initialization
initializeToolbar

	toolbar := self newToolbar
  		addStyle: 'stToolbar';
		addStyle: 'stPulseToolbar';
		addStyle: 'small';
  		displayMode: self application toolbarDisplayMode;
  		yourself.
		
	toolbar 
		add: (toolbar newToolbarButton 
			label: 'Settings';
			icon: (self application iconNamed: #configuration);
			help: 'Open settings browser to configure StPulse';
			action: [ self openSettingsBrowser ]).