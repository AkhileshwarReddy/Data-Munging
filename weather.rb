require_relative "./data-extractor.rb"
require_relative "./data-analyzer.rb"

class Weather
    attr_writer :data_extractor, :data_analyzer
    def initialize
        @data_extractor = DataExtractor.new('./data/weather.dat');
        @data_analyzer = DataAnalyzer.new(@data_extractor.extract_data, [1,2], 0)
    end

    def get_min_spread
        return @data_analyzer.get_min_difference
    end
end