% Reglas para el sistema de planificación de rutas
:- [facts].

% Representamos cada tramo como leg(O, D, Medio, Salida, Llegada, Costo, Disp).
leg(O,D,M,HS,HL,C,Disp) :- ruta(O,D,M,HS,HL,C,Disp).

% Búsqueda de rutas (con escalas), evitando ciclos
find_route(O, D, Path) :- path(O, D, [O], Path).

% Caso base: tramo directo
path(O, D, Visited, [leg(O,D,M,HS,HL,C,Disp)]) :-
    \+ member(D, Visited),
    leg(O,D,M,HS,HL,C,Disp).

% Caso recursivo: O -> X -> ... -> D
path(O, D, Visited, [leg(O,X,M,HS,HL,C,Disp) | Rest]) :-
    leg(O, X, M, HS, HL, C, Disp),
    X \= D,
    \+ member(X, Visited),
    path(X, D, [X|Visited], Rest).

% Filtros
all_available([]).
all_available([leg(_,_,_,_,_,_,si)|T]) :- all_available(T).

all_departures_between([], _Min, _Max).
all_departures_between([leg(_,_,_,HS,_,_,_)|T], Min, Max) :-
    HS >= Min, HS =< Max,
    all_departures_between(T, Min, Max).

find_route_available(O,D,Path) :-
    find_route(O,D,Path),
    all_available(Path).

find_route_time_window(O,D,Min,Max,Path) :-
    find_route(O,D,Path),
    all_departures_between(Path, Min, Max).

% Cálculo de métricas
leg_duration(HS, HL, Dur) :-
    D is HL - HS,
    ( D >= 0 -> Dur is D ; Dur is D + 24 ).

total_time([], 0).
total_time([leg(_,_,_,HS,HL,_,_)|T], Time) :-
    leg_duration(HS,HL,D),
    total_time(T, TR),
    Time is D + TR.

total_cost([], 0).
total_cost([leg(_,_,_,_,_,C,_)|T], Cost) :-
    total_cost(T, CR),
    Cost is C + CR.

% Óptimos por tiempo/costo
fastest_route(O,D,Path,Time) :-
    setof(TimeP-PathP, (find_route(O,D,PathP), total_time(PathP, TimeP)), [Time-Path|_]).

cheapest_route(O,D,Path,Cost) :-
    setof(CostP-PathP, (find_route(O,D,PathP), total_cost(PathP, CostP)), [Cost-Path|_]).

fastest_route_available(O,D,Path,Time) :-
    setof(TimeP-PathP, (find_route_available(O,D,PathP), total_time(PathP, TimeP)), [Time-Path|_]).

cheapest_route_available(O,D,Path,Cost) :-
    setof(CostP-PathP, (find_route_available(O,D,PathP), total_cost(PathP, CostP)), [Cost-Path|_]).

% Alternativas
direct_available(O,D, leg(O,D,M,HS,HL,C,si)) :- ruta(O,D,M,HS,HL,C,si).

alternative_with_stopovers(O,D, Path) :-
    find_route_available(O,D,Path),
    length(Path, L), L > 1.

% Si no hay ruta directa disponible, sugerir con escalas
suggest_if_no_direct(O,D,Path) :-
    ( direct_available(O,D,_) -> fail ; alternative_with_stopovers(O,D,Path) ).

% Si la ruta óptima no está disponible, entregar la siguiente mejor
second_item([_,B|_], B).

next_best_fastest(O,D,BestPath,BestTime,NextPath,NextTime) :-
    setof(TimeP-PathP, (find_route(O,D,PathP), total_time(PathP, TimeP)), L),
    L = [BestTime-BestPath | _],
    ( second_item(L, NextTime-NextPath) -> true ; fail ).

next_best_cheapest(O,D,BestPath,BestCost,NextPath,NextCost) :-
    setof(CostP-PathP, (find_route(O,D,PathP), total_cost(PathP, CostP)), L),
    L = [BestCost-BestPath | _],
    ( second_item(L, NextCost-NextPath) -> true ; fail ).

