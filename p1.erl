-module(p1).
-export([p1/0, factorial/1]).
-team("Sarathy Selvam, PID: 730770538 , Lakshin Ganesha, PID:730757493").
p1() ->
    {ok, Num} = io:read("Enter a number for computation: "),
    if
        not is_integer(Num) -> io:format("Please enter a valid integer.~n");
        Num<0 -> 
            Value = math:pow(abs(Num), 7),
            io:format("The value of the expression is: ~p~n", [Value]);
        Num == 0 -> io:format("The value of the expression is: 0~n");
        Num>0->
            Remainder = Num rem 7,
            if
                Remainder == 0 ->
                    io:format("Fifth root of Num: ~p~n", [math:pow(Num, 1/5)]);
                true ->
                    Res = factorial(Num),
                    io:format("Factorial of Num: ~p~n", [Res])
            end
    end.

factorial(Num)->
    if
        Num == 0 -> 1;
        true -> Num * factorial(Num - 1)
    end.
