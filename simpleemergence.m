% Simulation parameters
grid_size = 50;
num_agents = 100;
num_steps = 1000;

% Initialize grid and agents
grid = rand(grid_size, grid_size);
agents = randi([1, grid_size], num_agents, 2);
agent_energy = rand(num_agents, 1);

% Simulation loop
for step = 1:num_steps
    [agents, grid, agent_energy] = move_agents(agents, grid, agent_energy);
    % Plotting the agent positions and resource grid
    imagesc(grid);
    colormap('summer');
    hold on;
    scatter(agents(:, 2), agents(:, 1), 50, 'r', 'filled');
    title(['Step ', num2str(step)]);
    hold off;
    drawnow;
    
    % Introduce random events
    if rand < 0.1 % 10% chance of a disaster
        disaster_pos = randi([3, grid_size-2], 1, 2);
        grid(disaster_pos(1)-2:disaster_pos(1)+2, disaster_pos(2)-2:disaster_pos(2)+2) = 0;
    end
end

% Analyze and visualize results
figure;
plot(agent_energy);
title('Agent Energy Levels Over Time');
xlabel('Agent Index');
ylabel('Energy');

% Function to update agent positions
function [agents, grid, agent_energy] = move_agents(agents, grid, agent_energy)
    grid_size = size(grid, 1);
    for i = 1:size(agents, 1)
        % Random movement
        move = randi([-1, 1], 1, 2);
        new_pos = mod(agents(i, :) + move - 1, grid_size) + 1;
        % Update agent position
        agents(i, :) = new_pos;
        % Consume resources
        agent_energy(i) = agent_energy(i) + grid(new_pos(1), new_pos(2));
        grid(new_pos(1), new_pos(2)) = grid(new_pos(1), new_pos(2)) * 0.9; % Deplete resources
    end
end