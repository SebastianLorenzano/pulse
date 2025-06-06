initialization
initializeButtons

	helpButton := self newButton
		addStyle: 'small';
		addStyle: 'stPulseButton';
		icon: (self iconNamed: #help);
		action: [ self showPopover: helpButton ];
		help: 'Open popover with tips for StPulse'.

	
	settingsButton := self newButton
		addStyle: 'small';
		addStyle: 'stPulseButton';
		icon: (self application iconNamed: #configuration);
		action: [ self openSettingsBrowser ];
		help: 'Open settings browser to configure StPulse'.
	
	self addKeyboardBehavior: helpButton.
	self addKeyboardBehavior: settingsButton.
	buttonsToolbar := self newPresenter
		layout: (SpBoxLayout newLeftToRight
			add: settingsButton expand: false;
			add: helpButton expand: false;
			yourself)