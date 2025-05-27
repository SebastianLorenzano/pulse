private - updating
updateListLabel
"1 = Environment page, 2 = Windows page, 3 = Commands page"
	| index |
	listLabel ifNil: [ ^ self ].
	index := paginator selectedPage. 
	index = 1 ifTrue: [
		listLabel label: 'Environment'.
			^ self ].
	index = 2 ifTrue: [
		listLabel label: 'Windows'.
			^ self ].
	index = 3 ifTrue: [ 
		listLabel label: 'Commands'. 
			^ self].
	^ self