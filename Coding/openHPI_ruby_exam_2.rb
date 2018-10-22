module Enumerable
  def gruppiere
    my_hash = Hash.new{|hsh,key| hsh[key] = [] }
     each {|e| my_hash[yield(e)].push e}
    puts my_hash
      return my_hash
    end
end


ary = [1,2,3,4,5]
ary.gruppiere {|i| i < 3 }
#puts ary
#puts ary.group_by{|i| i < 3 }
