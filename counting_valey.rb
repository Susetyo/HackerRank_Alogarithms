array = ['U','D','D','D','U','D','U','U']
cont=[]
v = 0 
array.each do |x|
	cont << x 
	if cont.length == 2 
		v+=1 if cont.uniq.size > 0
		cont.clear	
	end
end

a = ['q','q']

puts a.uniq.size
