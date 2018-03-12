#!/bin/ruby
def migratoryBirds(n, ar,types = [1,2,3,4,5],count=0,data={"1"=>0,"2"=>0,"3"=>0,"4"=>0,"5"=>0})
    ar.each do |r|
        types.each do |type|
            if r.to_i == type.to_i
                data[type.to_s] += 1 
            end
        end
    end
    
    max = data.max_by{|k,v| v}
    
    return max.first.to_i
end

n = gets.strip.to_i
ar = gets.strip
ar = ar.split(' ').map(&:to_i)
result = migratoryBirds(n, ar)
puts result;
