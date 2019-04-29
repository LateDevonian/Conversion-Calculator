class Fizzbuzz

  def is_fizzbuzz(n)
    if n % 5 == 0 && n % 3 == 0
      "fizzbuzz"
        elsif n % 5 == 0
          "buzz"
          elsif n % 3 == 0
            "fizz"
      else
        n
    end
  end

  def fb
    (1..100).each do |n|
      if n % 5 == 0 && n % 3 == 0
        puts  "fizzbuzz"
          elsif n % 5 == 0
            puts  "buzz"
            elsif n % 3 == 0
              puts  "fizz"
              else
                puts  n
      end
    end
  end



end
