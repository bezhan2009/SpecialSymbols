-module(simple_interest).
-export([calculate_simple_interest/3, main/0]).

calculate_simple_interest(Principal, Rate, Time) ->
    (Principal * Rate * Time) / 100.

main() ->
    Principal = 1000,
    Rate = 5,
    Time = 3,
    Interest = calculate_simple_interest(Principal, Rate, Time),
    io:format("The simple interest is: ~p~n", [Interest]).
