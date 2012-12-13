as yet unclassified
nscNode: nsc
    | node |
    self nodes at: nsc ifPresent: [ :theNode | ^ theNode ].
    node := TDObjectNode new
        name: 'nsc';
        topez: topez;
        basicContents: nsc;
        listBlock: [ :theNode | #('indexedPaths') , ((1 to: nsc size) collect: [ :each | each asString ]) ];
        elementBlock: [ :theNode :elementName :absentBlock | 
                    | childNode |
                    childNode := elementName = 'indexedPaths'
                        ifTrue: [ self indexListNode: nsc _indexedPaths ]
                        ifFalse: [ self indexElementNode: (nsc _at: elementName asNumber) ].
                    childNode
                        name: elementName;
                        parent: theNode;
                        yourself ];
        yourself.
    self nodes at: nsc put: node.
    ^ node