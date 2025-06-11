private - updating
candidateAdded: aCandidate
	
	self mutex critical: [   
		numCandidatesAdded >= self class maxCandidatesAdded
			ifTrue: [ ^ self ]. 
		numCandidatesAdded := numCandidatesAdded + 1.
		candidatesAddedList add: aCandidate ]
	 