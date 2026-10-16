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

## Detailed notes

ε-Machines and the Formalization of Emergent Behavior
Hierarchical Models and the Concept of ε-Machine
ε-machines are computational models used to define and predict the behavior of complex systems. They identify patterns and regularities in state transitions, making them useful for understanding how simple rules at lower levels can lead to complex behaviors at higher levels. Introduced by Jim Crutchfield, an ε-machine operates within a finite state set, predicting future states based on the current state and inputs, similar to how an elevator operates based on its current position, direction, and button presses.

Computational Mechanics and Causal States
Computational mechanics utilizes ε-machines to simplify the interaction network of complex systems into what is known as causal states. These states contain information about past conditions and generate a distribution of possible future states. If two different present states produce the same future state distribution, they are considered to be in the same causal state. This principle explains how our brains maintain consistent behavior under similar conditions despite the unique firing patterns of neurons.

Expanding the Concept
Researchers like Rosas and colleagues have expanded the concept to view complex systems as composed of multiple ε-machines operating at different scales. For instance:

At a molecular scale, ε-machines represent ions and channels producing neuronal currents.
At a neuronal scale, ε-machines represent firing patterns.
At the brain region scale, ε-machines represent activities in areas like the hippocampus and frontal cortex.
These ε-machines interact hierarchically, with each level's behavior emerging from the lower levels. This interconnected structure means macro-level behaviors can be derived from simpler interactions at lower levels.

Strong Aggregatability and Emergence
This hierarchical structure, where ε-machines at different levels are coarse-grained versions of each other, is known as strong aggregatability. It suggests that macro-level behaviors can be accurately predicted using only macro-level information without referring to finer details. This provides insights into the nature of emergent phenomena by simplifying complex interactions into hierarchical, coarse-grained causal states.

Practical Applications
The ε-machine framework has practical applications across various scientific fields:

Molecular Level: Modeling chemical reactions and molecular dynamics.
Cellular Level: Understanding gene expression and signaling pathways.
Tissue and Organ Level: Explaining how cellular interactions lead to tissue and organ properties.
Organism Level: Modeling physiological states and stress responses.
Population and Ecosystem Level: Explaining population dynamics and ecosystem interactions.
Computational Closure and Hierarchical Emergence
Computational closure implies that a system's future states are fully determined by its current state and governing rules, suggesting a deterministic universe where all events are predetermined. This concept supports a reductionist view, where understanding parts leads to understanding the whole. However, complex systems often exhibit emergent properties that challenge this view and suggest the need for a more holistic approach.

Interdisciplinary Importance
Understanding hierarchical emergence and computational closure requires integrating insights from various disciplines like physics, biology, sociology, and philosophy. This reflects the intrinsic complexity of the natural world and emphasizes the importance of interdisciplinary approaches in studying complex systems.

Causality in Complex Systems
Causality in complex systems is intricate, involving:

Feedback Loops: Both positive and negative feedback loops are fundamental, where positive feedback amplifies changes and negative feedback stabilizes the system.
Nonlinear Interactions: Outputs are not directly proportional to inputs, leading to unpredictable and chaotic behaviors.
Self-Organization: Complex systems often exhibit self-organization, where order and structure emerge spontaneously without external guidance.
This summary provides a structured overview of the ε-machine framework and its applications in understanding complex systems and emergent behaviors. If you need further details or an in-depth explanation of any part, feel free to ask!

References

https://arxiv.org/abs/2402.09090 
https://www.pnas.org/doi/10.1073/pnas.1314922110 
https://www.mdpi.com/1099-4300/19/5/188 
https://arxiv.org/abs/2202.01854 

Code Explanation

### `simpleemergence.m`

This MATLAB script simulates the movement and energy consumption of agents on a grid over a series of steps. The simulation involves the following steps:

Simulation Parameters:

grid_size = 50: Defines the size of the grid as 50x50.
num_agents = 100: Sets the number of agents in the simulation to 100.
num_steps = 1000: The simulation will run for 1000 steps.
Initialization:

grid = rand(grid_size, grid_size): Initializes the grid with random values representing resources.
agents = randi([1, grid_size], num_agents, 2): Randomly places 100 agents on the grid.
agent_energy = rand(num_agents, 1): Initializes each agent's energy level with a random value.
Simulation Loop:

The loop runs for 1000 steps (num_steps).
During each step, the move_agents function is called to update agent positions and energy levels.
The current state of the grid and agent positions are plotted. Agents are displayed as red dots on the grid.
A random disaster event with a 10% chance is introduced. If it occurs, a 5x5 area on the grid is set to zero, simulating resource depletion.
Analysis and Visualization:

After the simulation, a plot of agent energy levels is generated, showing how energy levels change over time.
Function:

move_agents: This function updates the position of each agent by moving them randomly. It also updates the agent's energy based on the resources at the new position and depletes the resources on the grid.

This code provides a dynamic and visual simulation of how agents interact with resources in their environment, highlighting the impact of movement and resource depletion over time.

Next Steps:

a. Add unit tests to validate the move_agents function.

b. Implement a logging mechanism to track agent positions and energy levels at each step for further analysis.

![AgentEnergyLevels](https://github.com/DeepDynaSim/Emergence/assets/35817872/76a239c8-9e56-4b78-a37e-a95a3e5fa538)

https://github.com/DeepDynaSim/Emergence/assets/35817872/89d74731-b81e-49f4-ab9f-48bfd92c0486

## Related work and collaboration

Explore related repositories: [Pilot Wave Dynamics](https://github.com/DeepDynaSim/Pilot-Wave-Dynamics) · [Complete Kinematic Analysis](https://github.com/DeepDynaSim/Complete-Kinematic-Analysis).

[DeepDynaSim](https://github.com/DeepDynaSim) is an engineering R&D and consulting company in İzmir, Türkiye, focused on physics-guided AI, simulation and control. For engineering collaboration: [support@deepdynasim.com](mailto:support@deepdynasim.com). For repository questions, use [Issues](https://github.com/DeepDynaSim/Emergence/issues).

Reuse follows the existing [LICENSE](LICENSE); academic authorship and third-party attribution remain with their respective creators.
