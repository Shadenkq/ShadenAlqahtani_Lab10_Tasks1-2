% Task 2 - Login System

user(shaden, 1234).
user(jwan, 5678).

login :-
    attempts(3).

attempts(0) :-
    write('Sorry, you exceeded the maximum number of attempts, try again later.').

attempts(N) :-
    N > 0,
    write('Enter username: '),
    read(Username),

    write('Enter password: '),
    read(Password),

    ( user(Username, Password) ->
        write('Login Successful')
    ;
        write('Login Unsuccessful'),
        nl,
        Next is N - 1,
        attempts(Next) ).
