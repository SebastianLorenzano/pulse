private - actions
openSettingsBrowser

	SettingBrowser new
		rootNodes:
			(SettingBrowser currentTree nodeNamed: #pulse) allChildren;
		open