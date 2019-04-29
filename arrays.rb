#dicking around with arrays
band = [
  { name: 'hetfield',
    instruments: ['guitar', 'vocals'],
    favorite_colour: 'black'
  },
  { name: 'laars',
    instruments: ['drums'],
    favorite_colour: 'napster'
  },
  { name: 'bassist dude',
    instruments: ['bass', 'guitar', 'keyboards'],
    favorite_colour: 'yellow'
  }
]

def get_names(band)
  #map is the same as each, steps through an array and passes
  #to a block
  #why you use map: instead of returing original array, it each_returns
  #new array based on what it does in the block
  band.map do |member|
    member[:name]
  end
end

def get_instruments(band)
  #you can chain methods to the end of what you are returning
  band.map {|member| member[:instruments] } #<create array
  .flatten  # flatten what you just returned as its an array within an array
  .uniq # make it unique
end

#use each with object  to avoid ditzing around
def get_guitarists(band)
  #get their names out only if they play guitar
  #
  band.each_with_object([]) do |member, names|
    if member[:instruments].include?('guitar')
      names << member[:name]
    end
    names
    #names always gets returns but if there is no guitar then it will be zippo
  end
  #object is an array as defined. loop over it once and don'thave to compact
end
#do a thing

  # can do a names[] << stuff the same thing as notideal in

  #option notideal
  # band.map do |member|
  #map always returns everything including the nils
  #   member[:name] if member[:instruments].include?('guitar')
  # end.compact
  ## goes over the array and squashes the null, so not ideal
puts get_guitarists(band)

# oldschool name of getting names. works but not ruby enough
# def get_names(band)
#   names = []
#   each_returns = band.each do |member|
#     names << member[:name]
#   end
#   names
# end
# puts get_names(band)
