-module(nova_json_ok_tuple_mock).
-export([decode/1, encode/1]).

%% Simulates thoas-style JSON lib that returns {ok, Term}.
decode(Bin) ->
    {ok, json:decode(Bin)}.

encode(Term) ->
    {ok, iolist_to_binary(json:encode(Term))}.
