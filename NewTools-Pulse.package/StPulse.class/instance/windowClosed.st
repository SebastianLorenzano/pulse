private - accessing
windowClosed

	service ifNotNil: [ service stop ].
	updateWorker ifNotNil: [ updateWorker stop ].
	searchWorker ifNotNil: [ searchWorker stop ].
	service := nil.
	updateWorker := nil.
	searchWorker := nil
