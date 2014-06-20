-module(reverse).
-export([reverse/1]).

reverse(List) when is_list(List) -> reverse(List, []);
reverse(_) -> io:format("Bad Argument~n").

%List must be a 'list'
reverse([X | Rest], Acc) ->
    reverse(Rest, [X | Acc]);
reverse([], Acc) ->
    Acc.
    