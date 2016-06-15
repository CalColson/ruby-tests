def add(num1, num2)
	num1 + num2
end

def subtract(num1, num2)
	num1 - num2
end	

def sum(arr)
	sum = 0

	arr.each do |e|

		sum += e
	end

	sum
end

def multiply(num1, num2)
	num1 * num2
end

def power(num1, num2)
	return 1 if num2 == 0
	return num1 if num2 == 1

	prod = num1

	(num2 - 1).times do
		prod *= num1
	end

	prod
end	

def factorial(num) 
	iter = num
	prod = num

	while iter > 1 do
		prod *= iter - 1
		iter -= 1
	end

	prod
end