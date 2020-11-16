class DataExtractor
    def initialize(filename)
        @filename = filename
    end

    def extract_data
        file_data = File.read(@filename)
        return file_data.lines
    end
end