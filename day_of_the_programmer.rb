#!/bin/ruby

def solve(year,sum_year = 243,result=0)
  if year < 1918 && year % 4 == 0 
      result = 256 - 244
  elsif year == 1918
      result = 256 - 230
  elsif year % 400 == 0 || (year % 4 == 0 && year % 100 != 0)
      result = 256 - 244
  else
      result = 256 - 243
  end
  return "#{result}.09.#{year}"
end

year = gets.strip.to_i
result = solve(year)
puts result;
