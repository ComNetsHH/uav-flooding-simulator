[![DOI](https://zenodo.org/badge/526239007.svg)](https://zenodo.org/badge/latestdoi/526239007)

# uav-flooding-simulator

This repository holds the simulation code for the evaluation of flooding protocols for urban UAV networks. It is intended for interested parties to reproduce research results, understand the inner workings of the protocols, or apply them to their own scenarios.

The simulation is based on [ns-3](https://www.nsnam.org/) and uses its IEEE 802.11p implementation.

All flooding protocols are implemented as application layer protocols.

## Getting started
All simulation code is the `ns-allinone-3.36/ns-3.36` folder. In there, simulations are setup in the `scratch` folder. For convenience, all simulations are wrapped in a python scripts.

To execute a pure-flooding / stochastic-flooding simulation, run

```
python3 run_sf_experiment <k> 0
```

where $k \in [0, 17160]$.
For contention-based-flooding or rate-decay-flooding, run

```
python3 run_rdf_experiment <k> 0
```

again, with $k \in [0, 17160]$.

The `exploration` contains all scripts used to analyze the simulation data and reproduce plots.

