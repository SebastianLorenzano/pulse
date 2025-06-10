private - updating
updateListLabel
"1 = Environment page, 2 = Windows page, 3 = Commands page"
	| index |
	listLabelPresenter ifNil: [ ^ self ].
	index := paginator selectedPage. 
	index = 1 ifTrue: [
		listLabelPresenter label: 'Environment'.
			^ self ].
	index = 2 ifTrue: [
		listLabelPresenter label: 'Windows'.
			^ self ].
	index = 3 ifTrue: [ 
		listLabelPresenter label: 'Commands'. 
			^ self].
	^ self