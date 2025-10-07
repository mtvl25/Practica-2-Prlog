% Consultas para Challenge 1
% Carga de hechos
:- [facts].

% Estructura base:
% platform(brand, serial, year, ram_gb, cpu, cores, storage_gb, type, gpu, vram_gb).

% 3.1 Consultas requeridas

% 1) Plataformas con CPU AMD adquiridas después de 2021
amd_after_2021(Brand, Serial) :-
    platform(Brand, Serial, Year, _RAM, amd, _Cores, _Storage, _Type, _GPU, _VRAM),
    Year > 2021.

% 2) Tablets con más de 2GB de RAM
tablets_ram_gt_2(Brand, Serial) :-
    platform(Brand, Serial, _Year, RAM, _CPU, _Cores, _Storage, tablet, _GPU, _VRAM),
    RAM > 2.

% 3) Plataformas con discos entre 32GB y 512GB
storage_between_32_512(Brand, Serial, StorageGB) :-
    platform(Brand, Serial, _Year, _RAM, _CPU, _Cores, StorageGB, _Type, _GPU, _VRAM),
    StorageGB >= 32,
    StorageGB =< 512.

% 4) ¿Cuántas plataformas son de ASUS?
count_asus(Count) :-
    aggregate_all(count, platform(asus, _S, _Y, _R, _C, _Co, _St, _T, _G, _V), Count).

% 5) ¿Cuántas laptops tienen >4GB de RAM y <512GB de disco?
count_laptops_ram_gt4_storage_lt512(Count) :-
    aggregate_all(count,
        ( platform(_B, _S, _Y, RAM, _CPU, _Cores, Storage, laptop, _GPU, _VRAM),
          RAM > 4,
          Storage < 512
        ), Count).

% 3.2 Cuatro consultas adicionales complejas

% A) Equipos de alto desempeño antes de 2022: >=8 núcleos y >=6GB VRAM (PC o Laptop)
high_perf_pre2022(Brand, Serial) :-
    platform(Brand, Serial, Year, _RAM, _CPU, Cores, _Storage, Type, _GPU, VRAM),
    Year < 2022,
    (Type = pc ; Type = laptop),
    Cores >= 8,
    VRAM >= 6.

% B) Sistemas con CPU AMD y GPU NVIDIA (combinación de proveedores)
amd_cpu_nvidia_gpu(Brand, Serial) :-
    platform(Brand, Serial, _Y, _R, amd, _C, _S, _T, nvidia, _V).

% C) Candidatos a actualización: portátiles o tablets con RAM <=4 o disco <=64, adquiridos antes de 2021
upgrade_candidate(Brand, Serial) :-
    platform(Brand, Serial, Year, RAM, _CPU, _Cores, Storage, Type, _GPU, _VRAM),
    Year < 2021,
    (Type = laptop ; Type = tablet),
    (RAM =< 4 ; Storage =< 64).

% D) Workstations equilibradas: PC Intel con 8+ núcleos, 16-64GB RAM, 512-2048GB disco y 4+GB VRAM
balanced_workstation(Brand, Serial) :-
    platform(Brand, Serial, _Y, RAM, intel, Cores, Storage, pc, _GPU, VRAM),
    Cores >= 8,
    RAM >= 16, RAM =< 64,
    Storage >= 512, Storage =< 2048,
    VRAM >= 4.

