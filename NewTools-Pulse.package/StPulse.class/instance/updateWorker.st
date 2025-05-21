private
updateWorker 
		
	updateWorker ifNil: [ 
	updateWorker := TKTWorker new  
		name: 'StPulse update worker: ', UUID new asString ; 
		start ].
	^ updateWorker ensureIsWorking