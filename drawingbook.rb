#!/bin/ruby

def solve(n, p, front_page=0, back_page=0)
    # Complete this function
    return [p/2,n/2-1].min
end

n = gets.strip.to_i
p = gets.strip.to_i
result = solve(n, p)
puts result;
