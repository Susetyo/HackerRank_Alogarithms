#!/bin/ruby

def sockMerchant(n, ar, pull=[],result=0)
    for i in 0...n
      if ar.length > 1
        ar.each_with_index do |val, index|
          i=1
          for j in index+1..n-1
            if val == ar[j]
              i+=1
            end
          end
          pull.push i if i > 1
          ar.delete_if do |i| i == val end
          break
        end
      else
        break
      end
    end

    pull.each do |x|
      result+=x/2
    end

    return result
end


n = gets.strip.to_i
ar = gets.strip
ar = ar.split(' ').map(&:to_i)
result = sockMerchant(n, ar)
puts result;
# ar.delete_if do |i| i == 3 end
# print ar
