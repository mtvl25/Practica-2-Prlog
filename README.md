# Practice 2 — Logic Programming (Prolog)

This repository contains the complete solution for Practice 2 of the **Programming Languages and Paradigms** course. All source code lives inside `practica2-logprog/`, organized into two independent modules:

* `challenge1/`: Database of computing platforms and Prolog queries.
* `travel/`: Route-planning system with search, filters, and optimization.

Tested with **SWI-Prolog (swipl) 9.3.31** on Windows.

## Prerequisites

* SWI-Prolog 8.x or newer.
* Optional: Git for cloning/version control.
* On Windows, if `swipl` isn’t in `PATH`, use the full path `"C:\Program Files\swipl\bin\swipl.exe"` or add that folder to `PATH` before running.

## Structure

* `practica2-logprog/challenge1/facts.pl`: 77 `platform/10` facts (brand, serial, year, RAM, CPU, cores, storage, type, GPU, VRAM).
* `practica2-logprog/challenge1/queries.pl`: Queries required by the assignment plus four additional, more complex ones.
* `practica2-logprog/challenge1/examples.pl`: Example script (`run_examples.`) to cover the requirements.
* `practica2-logprog/travel/facts.pl`: `route/7` facts with origin, destination, mode, schedules, cost, and availability.
* `practica2-logprog/travel/rules.pl`: Route search with layovers (no cycles), filters by availability/schedule, optimal routes by time or cost, and alternative suggestions.
* `practica2-logprog/travel/examples.pl`: Executable examples to validate the planner.
* `practica2-logprog/scripts/`: Presentation scripts for the three team members.

## Interactive execution

### Challenge 1 (platforms)

```bash
cd practica2-logprog/challenge1
swipl  # or "C:\Program Files\swipl\bin\swipl.exe"
['queries'].
```

Example queries:

```prolog
amd_after_2021(B,S).
tablets_ram_gt_2(B,S).
storage_between_32_512(B,S,Cap).
count_asus(N).
count_laptops_ram_gt4_storage_lt512(N).
```

Or run:

```prolog
['examples']., run_examples.
```

### Travel (route planner)

```bash
cd practica2-logprog/travel
swipl
['rules'].
```

Example queries:

```prolog
find_route(bogota, cartagena, Path).
fastest_route(bogota, santa_marta, Path, Time).
cheapest_route(bogota, santa_marta, Path, Cost).
find_route_available(bogota, cartagena, Path).
find_route_time_window(bogota, medellin, 6, 12, Path).
```

Or run:

```prolog
['examples']., run_examples.
```

> Remember to end every query with a period (`.`). If Prolog shows the `|` prompt, type `.` and press Enter to return to the main `?-` prompt.

## Non-interactive execution

* Challenge 1:

  ```bash
  swipl -s practica2-logprog/challenge1/examples.pl -g run_examples -t halt
  ```
* Travel:

  ```bash
  swipl -s practica2-logprog/travel/examples.pl -g run_examples -t halt
  ```

## Highlighted queries (Challenge 1)

* `amd_after_2021/2`: Platforms with AMD CPUs acquired after 2021.
* `tablets_ram_gt_2/2`: Tablets with more than 2 GB of RAM.
* `storage_between_32_512/3`: Platforms with storage between 32 and 512 GB.
* `count_asus/1`: Count of ASUS platforms.
* `count_laptops_ram_gt4_storage_lt512/1`: Laptops with >4 GB RAM and <512 GB storage.
* Complex queries: `high_perf_pre2022/2`, `amd_cpu_nvidia_gpu/2`, `upgrade_candidate/2`, `balanced_workstation/2`.

## Key predicates (Travel)

* `find_route/3`: Routes with layovers without cycles.
* `fastest_route/4` and `cheapest_route/4`: Optimal routes by time or cost (also `*_available/4` variants).
* `find_route_available/3`, `find_route_time_window/5`: Filters by availability and time window.
* `suggest_if_no_direct/3`: Alternative with layovers if no direct route is available.
* `next_best_fastest/6`, `next_best_cheapest/6`: Second-best option when the best one isn’t available.

## Suggested validation

* Run `examples.pl` in both modules to review full outputs.
* Try combinations of filters (city, schedule, availability) to verify rules.
* Use `make.` in the REPL after editing Prolog files to reload changes.

## Authors

* Mathias Velez Londono
* Juan Esteban Torres Pena
* Alejandro Restrepo Osorio
