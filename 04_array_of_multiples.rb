def array_of_multiples(num, length)
	array = []
	for i in 0...length
		array.push(num + num * i)
	end
	array 
end

array_of_multiples(17,6)


