class  Jellicle
    # a class of ruby design patterns with each method being a pattern
    # This one leaves details of each step to a subclass
    # One sublcass for each cat format
  def initialize
    @species = 'felix'
    @cattext = [ 'all cats are jellicle cats', 'its about cats']
  end

  def output_cat
    output_header
    output_song
    output_song_start
    output_song_end
    output_end
  end

  def output_song
    @cattext.each do |line|
      output_line(line)
    end
  end

  def output_header
    raise "called abstract method : output head"
  end

  def output_song_start
    raise "called abstract method : output song_start"
  end

  def output_song(line)
    raise "called abstract method: output_line"
  end

  def output_song_end
    raise "called abstract method : output song end"
  end

  def output_end
    raise "called abstract method : output end"
  end
end

class Gus < Jellicle
   

  def output_header
    puts "Cat at the theatre door"
  end

  def output_
  
  def output

end
