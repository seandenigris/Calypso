converting
asFullHierarchyScope
	| subclassScope fullScope |
	subclassScope := (self asScope: ClySubclassScope)
		localClassScope: self class.
		
	fullScope := self , self asInheritedScope, subclassScope.
	fullScope name: self class hierarchyScopeName.
	^fullScope