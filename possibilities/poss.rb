# write a program that outputs all possibilities to put + or - or nothing
#  between the numbers 1, 2, ...9(in this order) such that the result is always 100
#  for example 1 + 2 + 34 -5 + 67 -8 =9 = 100
require 'byebug'

class Possible

  def possibility
    results = []

    ['+', '-', '']
      .repeated_permutation(8)
      .each do |perm|
      sum_text = ('1'..'8').zip(perm).flatten.join + '9'
      # puts "#{sum_text} = 100" if eval(sum_text) == 100
      results.push("#{sum_text}") if eval(sum_text) == 100
    end
    results
  end

  def possibility2
    #the more ruby version

  end
end
