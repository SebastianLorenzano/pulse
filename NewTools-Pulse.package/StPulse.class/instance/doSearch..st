private - actions
doSearch: aString
	
	"clean all possible pending tasks (this is *a bit* better, but still annoying :("
	worker purge.
	worker isBusy ifTrue: [ 
		worker finalizer finalize.
		worker start ].
	"now schedule the last one"
	worker schedule: [ 
		| candidates |
		candidates := self model 
			candidatesFor: aString 
			inContext: self selectedContext.
		"just update the last result (empty runner means there are no more tasks) 
		 and since purge ensures there is always just one pending... this should 
		 work slightly better.
		 In anycase it feels smoother :)"
		worker isEmpty ifTrue: [
			self updateResultListWith: candidates ] ]