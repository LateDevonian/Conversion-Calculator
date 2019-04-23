# write a function that combines two lists by alternately taking
# elements. For example given the two lists [a,b,c] and [1,2,3]
# the function should return [1,b,2,c,3]
class CombineLists

  def combine(list, list2)
    (list.zip(list2).flatten | list2).compact
  end

  def add_array(list,list2)
     list + list2
   end

   def only_unique(list, list2)
     new = list.concat(list2)
     new.uniq
   end

  def concatinate(list, list2)
    list.concat(list2)
  end

end
