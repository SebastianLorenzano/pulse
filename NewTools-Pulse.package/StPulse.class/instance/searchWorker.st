private
searchWorker 
		
	searchWorker ifNil: [ 
	searchWorker := TKTWorker new  
		name: 'StPulse search worker: ', UUID new asString ; 
		start ].
	^ searchWorker ensureIsWorking