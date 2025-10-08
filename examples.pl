% Ejemplos de uso para Travel Planner
:- [rules].

print_path([]).
print_path([leg(O,D,M,HS,HL,C,Disp)|T]) :-
    format('  ~w -> ~w (~w) ~2f-~2f $~w disp=~w~n', [O,D,M,HS,HL,C,Disp]),
    print_path(T).

run_examples :-
    writeln('Rutas (cualquier disponibilidad): Bogotá -> Cartagena'),
    find_route(bogota, cartagena, P1), print_path(P1), nl,

    writeln('Ruta más rápida: Bogotá -> Santa Marta'),
    fastest_route(bogota, santa_marta, P2, T2), print_path(P2), format('Tiempo = ~2f~n~n',[T2]),

    writeln('Ruta más barata: Bogotá -> Santa Marta'),
    cheapest_route(bogota, santa_marta, P3, C3), print_path(P3), format('Costo = $~2f~n~n',[C3]),

    writeln('Solo disponibles: Bogotá -> Cartagena'),
    find_route_available(bogota, cartagena, P4), print_path(P4), nl,

    writeln('Filtrar por horario (6-12): Bogotá -> Medellín'),
    find_route_time_window(bogota, medellin, 6, 12, P5), print_path(P5), nl,

    writeln('Sugerir alternativa si no hay directa disponible: Medellín -> Santa Marta'),
    suggest_if_no_direct(medellin, santa_marta, P6), print_path(P6), nl.

