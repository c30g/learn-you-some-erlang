-module(yg_test).

-export([add/2, log/1]).

add(X,Y) ->
    X + Y.

log(Content) ->
    io:format("first log").
