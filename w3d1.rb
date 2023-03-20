require 'byebug'

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

    def my_reject(&blk)
        arr = []
        self.my_each do |ele|
            if !blk.call(ele)
                arr << ele 
            end
        end
        arr
    end


    def my_any?(&blk)
        self.my_each do |ele|
            if blk.call(ele)
                return true
            end
        end
        
        false

    end
    
    def my_all?(&blk)
        count = 0

        self.my_each do |ele|
            if blk.call(ele)
                count += 1
            end
        end

        if count == self.length
            return true
        else
            return false
        end

    end

    def my_flatten
        # if !ele.is_a?(Array)
        #     [ele]
        # end
        # flattened = []

        
    end

    def my_zip(*arr)         
        new_arr = []         

        (0...self.length).each do |i|
            new_arr << [self[i]] 
        end

        arr.each do |sub_arr|
            sub_arr.each_with_index do |num, idx|
                if sub_arr[idx] == nil 
                    new_arr[idx] << nil 
                else
                    new_arr[idx] << sub_arr[idx]
                end

            end
        end

        # i = 0
        # while i < new_arr[0].length
        #     #if new_arr[i].length < new_arr[0].length
            
        #     while new_arr[i].length < new_arr[0].length
        #         new_arr[i] << nil
        #     end
        #     i += 1
        # end
            
        new_arr

    end

end


