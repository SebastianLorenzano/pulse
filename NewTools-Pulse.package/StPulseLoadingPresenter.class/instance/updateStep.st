as yet unclassified
updateStep
	| step |

	step := self layout children size.
	step < 5 
		ifTrue: [ self layout add: (self newStepImage: step) expand: false ]
		ifFalse: [ self reset ]