%%% system attributes
-module(yg_test).
-export([add/2, log/1, ellie/0, ret/2]).
-compile([debug_info]).

%% custom atrributes.
-author("Zhang YuGu").

add(X,Y) -> X + Y.

log(Content) -> io:format(Content).

ellie() -> io:format("hello, Ellie.~n").

ret(X,Y) -> {X,Y}.
