private
processAddedCandidates
	"If its empty, the history is put in its place. That's why it is not checked."
	| candidates |
	
	candidatesAddedList ifEmpty: [ ^ self ].
	searchPresenter text ifEmpty: [ ^ self ].
	candidates := candidatesAddedList asArray.
	candidatesAddedList removeAll.
	self updateResultListWith: candidates
	