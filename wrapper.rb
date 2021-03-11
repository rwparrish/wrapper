class Wrapper

require 'pry'

  # def wrap(string, col_num)
  #   # split the string into an array of sub strings
  #   string = string.split
  #   # insert a line break with the line break character at the given index position
  #   string.insert(col_num, "\n")
  #   # join the sub strings back into a string
  #   new_string_w_brk = string.join(" ")
  #   #return 
  #   new_string_w_brk
  #   this does what I want but only once
  # end

  # def wrap(string, col_num)
  #   string = string.split
  #   string..select.with_index {|col_num,i| (i+1) % 2 == 0}
  # end

  # def wrap(string, col_num)
  #   string = string.split
  #   new_arr = string.map { |e| new_arr.insert(i, "\n") if e.index? % col_num == 0 } 
  #     # do something if number of iteration is multiple of col_num???
  #   binding.pry
  #   print string.join(" ")
  # end

  def wrap(string, col_num)
    brk_arr = []
    string = string.split
    string.each_slice(col_num) { |a| brk_arr << a }
    final_str = brk_arr.map { |a| a << "\n" }.flatten
    #remove unecessary line break at end
    final_str.delete_at(-1)
    final_str.join(" ")
  end
    # binding.pry
  # to test I instantiated an object of the Wrapper class in pry and 
  # then called the wrap instance method on it passing in some argurments to the paramaters
end 