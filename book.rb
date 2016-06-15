class Book
	attr_accessor :title

	def title
		arr = @title.split
		arr.each do |word|
			word.capitalize! if word != "and" && word != "in" && word != "the" && word != "of" && word != "a" && word != "an"
		end

		incomplete_title = arr.join(' ')
		first_letter = incomplete_title[0].capitalize
		incomplete_title[0] = first_letter
		@title = incomplete_title
	end
	#Testing
end