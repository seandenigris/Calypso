tests
testFillingWithMetaclass

	queryResult fillWith: {Array class}.
	
	self assert: queryResult items equals: {Array binding}.
	