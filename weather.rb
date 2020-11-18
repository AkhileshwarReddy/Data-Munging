require_relative "./calculator.rb"

MnT = 1
MxT = 2
Day = 0
FILEPATH = './data/weather.dat'

weather = Calculator.new(FILEPATH, [MnT, MxT], Day).get_min_difference
puts weather.inspect
