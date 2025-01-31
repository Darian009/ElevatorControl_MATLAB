% Simple Elevator program
clc;
clear;
fprintf('This Building Has 10 Floors\n');
fprintf('Please Input Your Starting Floor and Your Destination Floor, Up/Down\n');
fprintf('WARNING!!! Maximum Capacity 10 People\n');

% Input starting floor
startfloor = menu('Enter Starting Floor','1','2','3','4','5','6','7','8','9','10');

% Input direction
direction = menu('Going Up or Down','Up','Down');

% Input number of passengers
pax = menu('How Many Passengers are There, MAX 10 Pax','1','2','3','4','5','6','7','8','9','10');

% Initialize destination array
destinations = zeros(1, pax);

% Collect passenger destination floors
for i = 1:pax
    destinations(i) = menu(sprintf('Passenger %d Enter Destination Floor:', i), ...
                           '1','2','3','4','5','6','7','8','9','10');
end

% Determine direction and sort accordingly
if direction == 1
    fprintf('Going Up...\n');
    sorted_floors = sort(destinations);
else
    fprintf('Going Down...\n');
    sorted_floors = sort(destinations, 'descend');
end

% Simulate stops at each floor
for i = 1:length(sorted_floors)
    fprintf('We Have Arrived at The %d Floor\n', sorted_floors(i));
    pause(1); % Simulate elevator stopping time
end