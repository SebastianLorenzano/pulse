private
candidatesFor: text inContext: aDockSpotterContext
	"contextSymbol can be #environment, #editors, #tools"
	| candidateList stream context processor |
	
	candidateList := StSpotterCandidatesList new.
	stream := StSpotterStream new 
		receiver: candidateList;
		yourself.

	context:= StSpotterContext new 
		step: self;
		stream: stream;
		text: text;
		search: text;
		yourself.

	(self processorsForContext: aDockSpotterContext) do: [ :each |
		processor := each new.
		processor filterInContext: context ].
	
	^ candidateList candidates asArray