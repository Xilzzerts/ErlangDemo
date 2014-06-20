-module(min).
-export([findMin/1]).

findMin([]) ->
    io:format("Error~n");
findMin(List) when is_list(List) ->
    x(List, 999999999);
findMin(_) ->
    io:format("Error~n").
    

x([X | Y], Q) ->
    if 
        X < Q -> x(Y, X);
        X >= Q -> x(Y, Q)
    end;
x([], Q) ->
    Q.
    
