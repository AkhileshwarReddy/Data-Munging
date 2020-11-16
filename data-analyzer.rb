class DataAnalyzer
    attr_accessor :data, :columns, :min_diff, :item_header,:min_item
    def initialize(data, columns, item_header_index)
        @data = data
        @columns = columns
        @item_header = item_header_index
        @min_diff = 1.0/0
    end

    def get_min_difference
        data.each_with_index do |line, index|
            next if index == 0 or index == @data.length - 1 or line.split.length < 10
            line_data = line.split
            diff = (line_data[columns[0]].to_i - line_data[columns[1]].to_i).abs
            if diff < min_diff
                @min_diff = diff
                @min_item = line_data[@item_header]
            end
        end
        return @min_diff, @min_item
    end
end