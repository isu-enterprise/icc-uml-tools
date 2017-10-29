:- module(uml, [test_structure/1]).

test_structure('People'('Class',[
                  'Persistent'('Stereotype',[]),
                  name('Attribute', [
                           public('VisibilityKind',[]),
                                 'String'('PrimitiveType',[])
                       ]),
                  getName('Operation',[
                              get('Property',[]),
                              public('VisibilityKind', [])
                          ])
              ])
    ).
