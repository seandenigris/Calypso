tests
testSelectedTabsContextItemsWithSnapshotOfDataSource

	| tab contextItem |
	browser packageSelection selectItems: {browser packageView dataSource elementAt: 1}.
	self snapshotState.
	
	tab := navigationState selectedTabs first.
	contextItem := tab context selectedItems first.
	self deny: contextItem ownerDataSource == browser packageView dataSource.
	self assert: contextItem ownerDataSource table isNil.
	self assert: contextItem ownerDataSource queryView isNil.
	self assert: contextItem ownerDataSource isClosed.