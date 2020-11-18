require_relative "./data-extractor.rb"
require_relative "./data-analyzer.rb"

class Calculator
    attr_writer :data_extractor, :data_analyzer
    def initialize(filepath, columns_for_diff, header_index)
        @data_extractor = DataExtractor.new(filepath)
        @data_analyzer = DataAnalyzer.new(@data_extractor.extract_data, columns_for_diff, header_index)
    end

    def get_min_difference
        @data_analyzer.get_min_difference
    end
end
