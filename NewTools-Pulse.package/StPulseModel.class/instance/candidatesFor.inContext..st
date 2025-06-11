private
candidatesFor: text inContext: aDockSpotterContext
	"contextSymbol can be #environment, #editors, #tools"
	| candidateList stream context processor |
	
	candidateList := StSpotterCandidatesList new.
	candidateList announcer when: StSpotterCandidateAdded send: #candidateAdded: to: self.
	stream := StSpotterStream new 
		onAddedSelector: #addCandidate:in:;
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