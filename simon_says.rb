def echo(str)
	str
end

def shout(str)
	str.upcase
end

def repeat(str)
	str + " " + str
end	

def repeat(*args)
	return args[0] + " " + args[0] if args.length == 1

	phr = args[0] + " "
	phr *= args[1]
	phr.strip!

	phr
end	

def start_of_word(str, num)
	str[0..(num - 1)]	
end

def first_word(str)
	arr = str.split
	arr[0]
end

def titleize(str)
	arr = str.split
	arr.each do |word|
		word.capitalize! if word != "and" && word != "over" && word != "the" 
	end

	caps = arr.join(' ')
	first_letter = caps[0]
	first_letter.capitalize!
	caps[0] = first_letter
	caps
end