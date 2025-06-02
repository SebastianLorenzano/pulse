private - accessing
windowClosed

	[ service ifNotNil: [  ] ].
	updateWorker ifNotNil: [ updateWorker stop ].
	searchWorker ifNotNil: [ searchWorker stop ].
	service := nil.
	updateWorker := nil.
	searchWorker := nil
