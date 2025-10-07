% Ejemplos de uso para Challenge 1
:- [queries].

run_examples :-
    writeln('1) AMD después de 2021:'),
    forall(amd_after_2021(B,S), format('  ~w ~w~n',[B,S])),

    writeln('\n2) Tablets > 2GB RAM:'),
    forall(tablets_ram_gt_2(B,S), format('  ~w ~w~n',[B,S])),

    writeln('\n3) Disco entre 32GB y 512GB:'),
    forall(storage_between_32_512(B,S,Cap), format('  ~w ~w ~wGB~n',[B,S,Cap])),

    writeln('\n4) Cantidad de ASUS:'),
    count_asus(NAsus), format('  ASUS = ~w~n',[NAsus]),

    writeln('\n5) Laptops >4GB RAM y <512GB disco:'),
    count_laptops_ram_gt4_storage_lt512(NLap), format('  Count = ~w~n',[NLap]),

    writeln('\nA) Alto desempeño pre-2022:'),
    forall(high_perf_pre2022(B1,S1), format('  ~w ~w~n',[B1,S1])),

    writeln('\nB) AMD CPU + NVIDIA GPU:'),
    forall(amd_cpu_nvidia_gpu(B2,S2), format('  ~w ~w~n',[B2,S2])),

    writeln('\nC) Candidatos actualización:'),
    forall(upgrade_candidate(B3,S3), format('  ~w ~w~n',[B3,S3])),

    writeln('\nD) Workstations equilibradas:'),
    forall(balanced_workstation(B4,S4), format('  ~w ~w~n',[B4,S4])).
