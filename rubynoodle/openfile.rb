require 'byebug'

class Directories

    def check_exists(path)
        Dir.exists?(path)
    end

    def check_empty(path)
        Dir.empty?(path)
    end

    def get_contents(path)
        Dir.children(path)
    end

    def is_expected_in_map
    end

end

