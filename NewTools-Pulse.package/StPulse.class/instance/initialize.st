initialization
initialize
	
	self setModelBeforeInitialization: StPulseModel new.
	super initialize.
	self ensurePulseService.