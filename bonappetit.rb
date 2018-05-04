def bon_appetit(n,k,c,b,i=0)
    c.each_with_index do |val,index|
        if index == k
            next
        else
            i+=val
        end
    end

    result = if i/2 == b
        print "Bon Appetit"
    else
        b - i/2
    end

    return puts "#{result}"
end

arr = gets.strip
arr = arr.split(' ').map(&:to_i)
n = arr[0]
k = arr[1]
c = gets.strip
c = c.split(' ').map(&:to_i)
b = gets.strip.to_i


bon_appetit(n,k,c,b)
