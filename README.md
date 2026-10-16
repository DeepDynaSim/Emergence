# Emergence: An Agent-Based MATLAB Simulation

**DeepDynaSim collection | Complex systems | Educational scientific computing**

Explore a small agent-based model in which agents move on a resource grid, accumulate energy and deplete local resources. Random resource-loss events make the spatial patterns evolve over time.

## Run the example

Open [simpleemergence.m](simpleemergence.m) in MATLAB from the cloned repository root. Review `grid_size`, `num_agents` and `num_steps`, then run the script. It animates the grid and agent locations and produces a final agent-energy plot.

```matlab
% Set a seed if you want repeatable random draws in your own experiment.
rng(42);
simpleemergence
```

## Scope

The implemented model is a resource-consumption demonstration. The background notes below introduce broader ideas in emergence, causal states and computational mechanics; they do not imply that an epsilon-machine inference or formal emergence metric is implemented in the script. Record the random seed and parameter values when comparing runs.

## Implemented algorithm

`simpleemergence.m` initializes a 50-by-50 resource grid and 100 agents, then advances 1,000 steps. Each agent takes a random lattice move, wrapping at the grid boundary. It adds the resource value at its new position to its energy; that cell then retains 90 percent of its resource. Updates are sequential, so agents arriving at the same cell can consume different remaining amounts.

With probability 0.1 per step, a randomly located 5-by-5 patch loses its resources. Resources do not regrow in the implemented model. The grid/agent animation is shown during the run.

The final plot shows **one final energy value per agent, against agent index**. It is not an energy-over-time record; the script does not store each agent's full history. Record such a history explicitly before making time-series claims.

## Reproducibility and interpretation

Use `rng(42)` before the script for repeatable random draws in the same MATLAB environment. Save the seed, parameters and final arrays when comparing runs. The model uses base MATLAB graphics and does not require external data.

This is a resource-consumption random-walk demonstration. It does not infer causal states, fit an epsilon-machine, measure computational closure or establish a deterministic theory of emergence. In particular, the background concept of computational closure must not be equated with a proof that this stochastic simulation or the universe is deterministic.

## Background reading

The following references were supplied for broader discussion; their methods are not implemented by this script:

- [Background preprint, arXiv:2402.09090](https://arxiv.org/abs/2402.09090)
- [PNAS background article](https://www.pnas.org/doi/10.1073/pnas.1314922110)
- [Entropy background article](https://www.mdpi.com/1099-4300/19/5/188)
- [Background preprint, arXiv:2202.01854](https://arxiv.org/abs/2202.01854)

## Original example outputs

![AgentEnergyLevels](https://github.com/DeepDynaSim/Emergence/assets/35817872/76a239c8-9e56-4b78-a37e-a95a3e5fa538)

https://github.com/DeepDynaSim/Emergence/assets/35817872/89d74731-b81e-49f4-ab9f-48bfd92c0486


## Related work and collaboration

Explore related repositories: [Pilot Wave Dynamics](https://github.com/DeepDynaSim/Pilot-Wave-Dynamics) · [Complete Kinematic Analysis](https://github.com/DeepDynaSim/Complete-Kinematic-Analysis).

[DeepDynaSim](https://github.com/DeepDynaSim) is an engineering R&D and consulting company in İzmir, Türkiye, focused on physics-guided AI, simulation and control. For engineering collaboration: [support@deepdynasim.com](mailto:support@deepdynasim.com). For repository questions, use [Issues](https://github.com/DeepDynaSim/Emergence/issues).

Reuse follows the existing [LICENSE](LICENSE); academic authorship and third-party attribution remain with their respective creators.
