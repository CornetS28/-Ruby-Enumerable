module Enumerabe #module begins

    def my_each #my_each method begins
        index = 0
        while  index < self.length #while loop begins
            yield(self[index])
             index+=1
        end #while loop begins
       self
    end #my_each method begins

end #module ends