require 'byebug'

class Compute_sum
  # do a bunch of computations, return a value based on given values
  #My attempt to decode Ruby Array Magic and other logic
  #This is probably taught better in mathemagics at Hogwarts

  def decide_leap(year)
    #determine if a year is a leap year
    if year % 4 == 0
      if year % 100 == 0
        yearVar = year % 400
          if yearVar == 0
          return true
        end
        return false
      end
      return true
    end
    false
  end


  def first_reduce(list)
    #sum an array
    list.reduce(&:+)
  end

  def second_reduce(list)
    #sum an array
    list.reduce(0) do |s,i| s + i end
   end

  def third_recursion(list)
    #sum an array via recursion
    #if base case end recursion, else reduce and call recursively
    if list.empty?
      return 0
    else
      number = list.pop
      return number + third_recursion(list)
    end
  end


  def factorial_single(num)
    #recursion on a single number, breaks at 1
    if (0..1).include?(num)
      return 1
    end
    num * factorial_single(num - 1)
  end
end
