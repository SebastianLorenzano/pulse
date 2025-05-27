private - actions
giveFocusToNextResultList
"If selectedPage = last page select first, else select selectedPage + 1"
	paginator selectedPage = paginator pages size
		ifTrue: [ paginator selectPage: 1 ]
		ifFalse: [ paginator selectPage: paginator selectedPage + 1 ]