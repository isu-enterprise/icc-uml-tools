% There is really no excuse not to write tests!
% Shame on me, i was lazy....
%
% http://www.swi-prolog.org/pldoc/man?section=unitbox
%

:- begin_tests(uml_basics).
:- use_module(uml).

test(simple_import) :-
        test_structure(_).

:- end_tests(uml_basics).

:- run_tests(uml_basics).

:- halt.
