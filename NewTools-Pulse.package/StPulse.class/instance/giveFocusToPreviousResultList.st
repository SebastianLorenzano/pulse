private - actions
giveFocusToPreviousResultList
"If selectedPage = first, select last. Else, select selectedPage - 1"
	paginator selectedPage = 1
		ifTrue: [ paginator selectPage: paginator pages size ]
		ifFalse: [ paginator selectPage: paginator selectedPage - 1 ]