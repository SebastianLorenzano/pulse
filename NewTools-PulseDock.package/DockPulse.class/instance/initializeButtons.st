initialization
initializeButtons

	findAllButton := self newButton
		icon: (self iconNamed: #glamorousDown);
		action: [ self findAllButtonAction ];
		help: 'Gives you all the results of a search. Normal searchs only give you the first 25';
		yourself.

	helpButton := self newButton
		icon: (self iconNamed: #help);
		action: [ self showPopover: helpButton ];
		help: 'Open popover with tips for StPulse'.

	settingsButton := self newButton
		icon: (self application iconNamed: #configuration);
		action: [ 
			self defaultKeyboardFocus takeKeyboardFocus.
			self openSettingsBrowser ];
		help: 'Open settings browser to configure StPulse'.
	self addKeyboardBehavior: findAllButton.
	self addKeyboardBehavior: helpButton.
	self addKeyboardBehavior: settingsButton.
	buttonsToolbar := self newPresenter
		layout: (SpBoxLayout newLeftToRight
			add: settingsButton expand: false;
			add: helpButton expand: false;
			yourself)