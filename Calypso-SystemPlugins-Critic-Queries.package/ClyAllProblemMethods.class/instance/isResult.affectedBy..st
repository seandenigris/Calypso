system changes
isResult: aQueryResult affectedBy: aSystemAnnouncement
	
	aSystemAnnouncement affectsCritiques ifFalse: [ ^false ].
	(super isResult: aQueryResult affectedBy: aSystemAnnouncement) ifTrue: [ ^true ].	
	"We can not compute affect on critiques by any kind system change
	because critiques are composed by some external system
	So without real knowledge we can only update critiqies after any system change.
	It can of course lead to very poor system performance because critic computation is slow process
	and triggering it after every system change can slow down system a lot.
	So instead we just reset given aQueryResult silently. So users should update views manually"
	aQueryResult forceLazyRebuild.
	^false