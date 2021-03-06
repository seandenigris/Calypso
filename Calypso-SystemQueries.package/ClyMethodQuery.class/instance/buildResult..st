execution
buildResult: aQueryResult
	| filteredMethods |
	filteredMethods := OrderedCollection new.
	
	scope methodsDo: [ :each | 
		(self selectsMethod: each) ifTrue: [filteredMethods add: each]].
	
	aQueryResult fillWith: filteredMethods