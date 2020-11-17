football_data = File.read('./data/football.dat').lines
team = nil
min_diff = 1.0/0
football_data.each_with_index do |line, index|
    next if index == 0 or line.split.length != 10
    line_data = line.split
    diff = (line_data[8].to_i - line_data[6].to_i).abs
    if diff < min_diff
        min_diff = diff
        team = line_data[1]
    end
end

puts "#{team} : #{min_diff}"