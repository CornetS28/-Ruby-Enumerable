module Enumerable #module begins

    def my_each #my_each method begins
        index = 0
        while  index < self.length #while loop begins
            yield(self[index])
             index+=1
        end #while loop ends
       self
    end #my_each method end

    def my_each_with_index #my_each_with_index method begins
        index = 0
        while  index < self.length #while loop begins
            yield(self[index], index)
             index+=1
        end #while loop ends
       self
    end #my_each_with_index  method begins

    def my_select #my_select method begins
        result_array = []
        
        self.my_each do |i| #iteration begins
          yield(i) ? result_array.push(i) : ""
         end #iteration begins
         result_array
      end #my_select method ends

end #module ends



# Testing our methods
[1,6,-3,8].my_each { |number| puts number-1 }
[1,6,-3,8].my_each_with_index { |number, itemPosition| puts "#{itemPosition}: #{number*5}"}
[1,6,-3,8].my_select { |number| puts number + 2}