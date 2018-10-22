module Enumerable
  def gruppiere
    each do |item|
      yield item
    end
  end
end


ary = [1,2,3,4,5]
ary.gruppiere {|i| i < 3 }