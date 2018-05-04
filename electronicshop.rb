#!/bin/ruby
def getMoneySpent(keyboards, drives, s, container=[])
    # Complete this function
    keyboards.each do |keyboard|
       drives.each do |drive|
         container.push(keyboard+drive) if keyboard+drive <= s
       end
    end

    result= if container.any?
      container.max
    else
      -1
    end

    return result
end

s,n,m = gets.strip.split(' ')
s = s.to_i
n = n.to_i
m = m.to_i
keyboards = gets.strip
keyboards = keyboards.split(' ').map(&:to_i)
drives = gets.strip
drives = drives.split(' ').map(&:to_i)
#  The maximum amount of money she can spend on a keyboard and USB drive, or -1 if she can't purchase both items
moneySpent = getMoneySpent(keyboards, drives, s)
puts moneySpent;
