class Array

    def my_each(&blk)
        
        i = 0
        while i < self.length
            blk.call(self[i])
            i += 1
        end 
        return self
    end

    def my_select(&blk)
        my_selected = []
        self.my_each do |ele|
            if blk.call(ele)
                my_selected << ele 
            end
        end
        my_selected


    end

    

end