%%% system attributes
-module(yg_test).
-export([add/2, log/1, ellie/0, ret/2, sublist/2]).
-compile([debug_info]).

%% custom atrributes.
-author("Zhang YuGu").

add(X, Y) -> X + Y.

log(Content) -> io:format(Content).

ellie() -> io:format("hello, Ellie.~n").

ret(X, Y) -> {X,Y}.

% sublist(L,N) -> reverse(tail_sublist(L,N,[])).
sublist(L,N) -> tail_sublist(L,N,[]).

tail_sublist(_, 0, SubList) -> SubList;
tail_sublist([], _, SubList) -> SubList;
tail_sublist([H|T], N, SubList) when N > 0 -> tail_sublist(T, N-1, [H|SubList]).
