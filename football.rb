require_relative "./data-extractor.rb"
require_relative "./data-analyzer.rb"

class Football
    def initialize
        @data_extractor = DataExtractor.new('./data/football.dat')
        @data_analyzer = DataAnalyzer.new(@data_extractor.extract_data, [6,8], 1)
    end

    def get_min_difference
        @data_analyzer.get_min_difference
    end
end
