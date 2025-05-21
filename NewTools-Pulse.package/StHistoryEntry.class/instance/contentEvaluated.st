accessing
contentEvaluated

	^ [ 
		OpalCompiler new 
			source: self contentString;
			evaluate ]
	onErrorDo: [ nil ]



	
	
	