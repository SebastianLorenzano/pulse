initialization
initializeWorker

	worker := TKTWorker new 
		name: 'Pulse-', UUID new asString;
		start