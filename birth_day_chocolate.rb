#!/bin/ruby

def solve(n, s, d, m, sum=0, count=0)
  t = m
  
  for i in 0...n
    sum = s[i]
    
    for j in i+1...t
      sum = sum + s[j].to_i
    end
    
    if sum == d
      count += 1
    end
    
    t+=1
  end
  
  return count
end

n = gets.strip.to_i
s = gets.strip
s = s.split(' ').map(&:to_i)
d, m = gets.strip.split(' ')
d = d.to_i
m = m.to_i
result = solve(n, s, d, m)
puts result;
