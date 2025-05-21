private
ensurePulseService
		
	service ifNotNil: [ 
		service isRunning ifFalse: [ service restart ].
		^ service ].
	
	service := TKTParameterizableService new.
	service name: 'Pulse service: ', UUID new asString.
	service stepDelay: 50 milliSeconds.
	service step: [ self processSearch ].
	service start.
	
	^ service