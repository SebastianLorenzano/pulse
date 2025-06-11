private
candidateAdded: ann

	candidateAddedAction ifNil: [ ^ self ].
	candidateAddedAction value: ann candidate