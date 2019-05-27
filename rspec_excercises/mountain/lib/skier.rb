require_relative 'trail_map'

module Mountain
  class Skier
    def intialize(trail_map)
      @trail_map = trail_map
    end

    def ski_on(trail_name)
      difficulty = TrailMap.difficulty(trail_name)
      @tired = true if difficulty == :expert
    end

    def tired?
      @tired
    end
  end
end
