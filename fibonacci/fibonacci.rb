class Fibonacci
  # can find any nth digit in the sequence using
  # x(n) = x(n-1) + x(n-2)

    def fib(n)
      #returns the fib number given a number n
      #don't add in big numbers!
      return n if n <= 1
      fib(n-1) + fib(n-2)
    end


  def fib_array(n)
    (1..n).inject( [0,1]){ | fib_array | fib_array << fib_array.last(2).inject(:+) }
  end


end
