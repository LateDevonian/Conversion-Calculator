class Artist

  def add_artist(array)
    #this is where the database will add them
    #check for dups
    #currently only returning the array provided
    array
  end

  def name_start_with(array, startwith)
    allnames = array.map {|name| name[:names] }
      .flatten

    allnames.select { |i| i.include?(startwith) }
    end

  end

  def get_names(array, id)
    #map is the same as each, steps through an array and passes
    #to a block
    #why you use map: instead of returing original array, it each_returns
    #new array based on what it does in the block
    array.map do |person|
      person[:name]

    end
  end

  def get_instruments(artist)
    #you can chain methods to the end of what you are returning
    artist.map {|person| person[:instruments] } #<create array
    .flatten  # flatten what you just returned as its an array within an array
    .uniq # make it unique
  end
  #use each with object  to avoid ditzing around
  def get_guitarists(artist)
    #get their names out only if they play guitar
    #
    artist.each_with_object([]) do |person, names|
      if person[:instrument].include?('guitar')
        names << person[:name]
      end
      names
      #names always gets returns but if there is no guitar then it will be zippo
    end

    private

    def privvy
    end

    #object is an array as defined. loop over it once and don'thave to compact
end
