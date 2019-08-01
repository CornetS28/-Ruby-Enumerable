module Enumerable #module begins

    def my_each #my_each method begins
        index = 0
        while  index < self.length #while loop begins
            yield(self[index])
             index+=1
        end #while loop begins
       self
    end #my_each method begins

    def my_each_with_index #my_each_with_index method begins
        index = 0
        while  index < self.length #while loop begins
            yield(self[index], index)
             index+=1
        end #while loop begins
       self
    end #my_each_with_index  method begins

end #module ends



# Testting our methods
[1,6,-3,8].my_each { |number| puts number-1 }
[1,6,-3,8].my_each_with_index { |number, itemPosition| puts "#{itemPosition}: #{number*5}"}