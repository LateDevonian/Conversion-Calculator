class VowelSquare
  #copied from coderbyete solution

# have a function take  a parameter passed with is a 2d matrix of arbitrary size filled with
# the letters from the alphabet, and determine if a 2*2 square composed entirely of vowels
# exists in in the matrix.
# ['abcd',
# 'eikr',
# 'oufj']

  def is_vowelsquare?(matrix)

  #matrix.scan(/[aeoui]/).count
  mc = matrix.count
  vowels = 'aeiou'.split('')
  positions = []

  # does it have 2 elements of strings
  if
    (mc == 0||1)
    "not suitable for this test"
    else
      (0..matrix.length-1).each do |i|
        row = matrix[i]
        (0..row.length-1).each do |j|
          column = row[j]

          if vowels.include?(column) and vowels.include?(row[j+1])
            if vowels.include?(matrix[i+1][j+1]) and vowels.include?(matrix[i+1][j])
              positions << [i,j]
              return positions.join('-')
            end
          end
        end
      end
        return 'not found'
    end
  end
end
