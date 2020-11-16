weather_data = File.read('./data/weather.dat').lines
spread_min = 1.0/0
day = 0
weather_data.each_with_index do |line, index|
    next if index == 0 or line.split.length == 0
    line_data = line.split
    spread = (line_data[1].to_i - line_data[2].to_i).abs
    if spread < spread_min
        spread_min = spread
        day = line_data[0].to_i
    end
end

puts "#{day} : #{spread_min}"
