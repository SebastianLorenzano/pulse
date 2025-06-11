initialization
initialize
	
	self setModelBeforeInitialization: 
		(StPulseModel new
			whenCandidateAddedDo: [ :aCandidate | self candidateAdded: aCandidate ];
			yourself).
	super initialize.
	numCandidatesAdded := 0.
	candidatesAddedList := OrderedCollection new
	