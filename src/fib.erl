%%%-------------------------------------------------------------------
%%% @author Andrey
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 06. Jul 2019 14:43
%%%-------------------------------------------------------------------
-module(fib).
-export([fib/1, fib_new/1]).

fib(0) ->
  1;
fib(1) ->
  1;
fib(N) when N > 1 -> fib(N-1) + fib(N-2).

fib_new(N) when N >= 0 ->
  fib(N,1,[1,1]).

fib(0,_,_) -> 1;
fib(1,_,_) -> 1;
fib(N,N,[H|_]) ->
  H;
fib(N,Count,[N_1,N_2|_]) ->
  fib(N, Count+1,[N_1+N_2, N_1]).

%%% Tests Section
%%% Тут тесты из примера, для старой функции. Для новой - в отдельном модуле.

-ifdef(TEST).

-include_lib("eunit/include/eunit.hrl").

fib_test_() -> [
  ?_assert(fib(0) =:= 1),
  ?_assert(fib(1) =:= 1),
  ?_assert(fib(2) =:= 2),
  ?_assert(fib(3) =:= 3),
  ?_assert(fib(4) =:= 5),
  ?_assert(fib(5) =:= 8),
  ?_assertException(error, function_clause, fib(-1)),
  ?_assert(fib(31) =:= 2178309)].

-endif.

