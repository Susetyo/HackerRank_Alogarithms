def kangaroo(x1, v1, x2, v2)
  # Complete this function
  a = x1
  b = x2
  if v1 < v2
      return "NO"
  else
    while v2 < v1 do
      x1+=v1 
      x2+=v2
      if x1 == x2
        return "YES"
        break
      end
    end
  end
end

puts kangaroo(0,3,4,2)

a = [1,2]
b = [0,3]

