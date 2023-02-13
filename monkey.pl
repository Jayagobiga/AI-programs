% Define the states
state(middle).
state(climb).
state(holding).

% Define the actions
action(climb_up).
action(grab).
action(climb_down).

% Define the rules
rule(middle, climb_up, climb).
rule(climb, grab, holding).
rule(climb, climb_down, middle).
rule(holding, climb_down, climb).

% Define the goal
goal(holding).

% Define the path to reach the goal
path(X,X,Visited,Visited).
path(Current,Goal,Visited,Result) :-
  rule(Current,Action,Next),
  not(member(Next,Visited)),
  path(Next,Goal,[Next|Visited],Result).

% Define the main predicate to find the solution
solve_monkey_problem(Solution) :-
  path(middle,holding,[middle],Solution).
 Monkey banana
