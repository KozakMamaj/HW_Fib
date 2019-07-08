%%%-------------------------------------------------------------------
%%% @author Andrey
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 06. Jul 2019 18:17
%%%-------------------------------------------------------------------
-module(fib_tests).
-author("Andrey").

-import(fib,[fib_new/1]).

-include_lib("eunit/include/eunit.hrl").

fib_new_test_() -> [
  ?_assert(fib_new(0) =:= 1),
  ?_assert(fib_new(1) =:= 1),
  ?_assert(fib_new(2) =:= 2),
  ?_assert(fib_new(3) =:= 3),
  ?_assert(fib_new(4) =:= 5),
  ?_assert(fib_new(5) =:= 8),
  ?_assertException(error, function_clause, fib_new(-1)),
  ?_assert(fib_new(31) =:= 2178309)
].
