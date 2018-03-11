#!/bin/ruby

def divisibleSumPairs(n, k, ar,count=0)
  ar.each_with_index do |val, index|
    for i in index+1..ar.length-1
			if (ar[index].to_i + ar[i].to_i) % k == 0 
				count += 1
			end      
    end
  end
  return count
end

n, k = gets.strip.split(' ')
n = n.to_i
k = k.to_i
ar = gets.strip
ar = ar.split(' ').map(&:to_i)
result = divisibleSumPairs(n, k, ar)
puts result;
