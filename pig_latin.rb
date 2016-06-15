def translate(str)
	arr = str.split

	arr.each do |word|
		if word[0] == 'a' || word[0] == 'e' || word[0] == 'i' || word[0] == 'o' || word[0] == 'u'

			word << "ay"

		elsif (word[1] == 'a' || word[1] == 'e' || word[1] == 'i' || word[1] == 'o' || 
			word[1] == 'u') && word[0..1] != "qu"

			first_letter = word[0]
			word[0] = ''
			word << first_letter + "ay"

		elsif (word[2] == 'a' || word[2] == 'e' || word[2] == 'i' || word[2] == 'o' || 
			word[2] == 'u') && word[1..2] != "qu"

			first_two_letters = word[0..1]
			word[0] = ''
			word[0] = ''
			word << first_two_letters + "ay"

		else
			first_three_letters = word[0..2]
			word[0] = ''
			word[0] = ''
			word[0] = ''
			word << first_three_letters + "ay"
		end
	end

	str = arr.join(' ')

	
end