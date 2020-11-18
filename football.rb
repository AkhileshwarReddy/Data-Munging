require_relative "./calculator.rb"

FOR_GOALS = 6
AGAINST_GOALS = 8
TEAM_INDEX = 1
FILEPATH = './data/football.dat'

football = Calculator.new(FILEPATH, [FOR_GOALS, AGAINST_GOALS], TEAM_INDEX).get_min_difference
puts football.inspect
