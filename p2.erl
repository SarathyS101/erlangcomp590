-module(p2).
-export([p2/0]).
-team("Sarathy Selvam, PID: 730770538", "Lakshin Ganesha, PID:730757493").
p2() ->
    io:format("Enter 0 to exit~n"),
    p1().

p1() ->
    {ok, Num} = io:read("Enter a number for computation: "),
    if
        not is_integer(Num) -> 
            io:format("Please enter a valid integer.~n"),
            p1();
        Num<0 -> 
            Value = math:pow(abs(Num), 7),
            io:format("The value of the expression is: ~p~n", [Value]),
            p1();
        Num == 0 -> io:format("0~nExit~n");
        Num>0 ->
            Remainder = Num rem 7,
            if
                Remainder == 0 ->
                    io:format("Fifth root of Num: ~p~n", [math:pow(Num, 1/5)]);
                true ->
                    Res = factorial(Num),
                    io:format("Factorial of Num: ~p~n", [Res])
            end,
            p1()
    end.

factorial(Num)->
    if
        Num == 0 -> 1;
        true -> Num * factorial(Num - 1)
    end.
