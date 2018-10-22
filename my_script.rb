module Enumerable
  def gruppiere
    self.map {|e| e.yield}
  end
end

ary = [1,2,3,4,5]
ary.gruppiere {|i| i < 3 }