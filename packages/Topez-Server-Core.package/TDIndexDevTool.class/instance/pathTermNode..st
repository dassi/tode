as yet unclassified
pathTermNode: pathTerm
    | node ivNames indexNameMap |
    self nodes at: pathTerm ifPresent: [ :theNode | ^ theNode ].
    ivNames := #('updateBtree' 'updateDict' 'children').
    indexNameMap := Dictionary new.
    1 to: pathTerm size do: [ :index | 
        | theIndex indexName |
        theIndex := pathTerm at: index.
        indexName := self pathNameForIndex: theIndex.
        indexNameMap at: indexName put: theIndex ].
    node := TDObjectNode new
        name: pathTerm name;
        topez: topez;
        basicContents: pathTerm;
        listBlock: [ :theNode | ivNames , indexNameMap keys asArray ];
        elementBlock: [ :theNode :elementName :absentBlock | 
                    | childNode |
                    childNode := elementName = 'updateBtree'
                        ifTrue: [ self btreeNode: (pathTerm instVarNamed: elementName) ]
                        ifFalse: [ 
                            elementName = 'updateDict'
                                ifTrue: [ self indexDictionaryNode: (pathTerm instVarNamed: elementName) ]
                                ifFalse: [ 
                                    elementName = 'children'
                                        ifTrue: [ self pathTermsNode: (pathTerm instVarNamed: elementName) rootTerms label: elementName ]
                                        ifFalse: [ self indexNode: (indexNameMap at: elementName) ] ] ].
                    childNode
                        parent: theNode;
                        name: elementName;
                        yourself ];
        yourself.
    self nodes at: pathTerm put: node.
    ^ node