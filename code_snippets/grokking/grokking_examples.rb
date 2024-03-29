
class GrokkingExamples

  #chapter 1 - binary search
  def binary_search(list, item)
    low = 0
    high = list.length() -1

    while low <= high
      mid = (low + high) /  2
      guess = list[mid]
      if guess == item
        return true
      elsif guess > item
        high = mid -1
      else 
        low = mid +1
      end
    end
  end

end
