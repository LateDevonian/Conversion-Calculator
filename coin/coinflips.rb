class Coinflips
  # how many different ways are there to flip a fair coin 5
  #times and not have three
  # or more heads in a row?
  #how about 10 to the 10 times
  #and not have 534 or more heads in a row?

  def coinflip(time_flipped, not_in_row)
    #equation method!
    #If we flip a coin N times without Q heads in a row,
    # the total amount is 2^N
    # and the amount with at least Q heads is 2^(N-Q+1)-1.
    # So the general answer is:
    # Flip(N,Q) = 2^N - 2^(N-Q+1) +1
    n = time_flipped
    q = not_in_row
    2**n - 2**(n-q+1) + 1
  end

end
