:- module(uml, [test_structure/1]).

test_structure('People'('Class',[
                  name('Attribute', [
                           public('VisibilityPublic',[]),
                           'String'('PrimitiveType',[])
                       ])
              ])
    ).
