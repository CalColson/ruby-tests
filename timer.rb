class Timer
	attr_accessor :seconds

	def initialize
		@seconds = 0
	end

	def time_string
		str = "00:00:00"
		secs = @seconds

		hours = secs / 3600
		secs -= hours * 3600

		minutes = secs / 60
		secs -= minutes * 60

		if hours >= 10
			str[0..1] = hours.to_s
		else
			str[1] = hours.to_s
		end

		if minutes >= 10
			str[3..4] = minutes.to_s
		else
			str[4] = minutes.to_s
		end

		if secs >= 10
			str[6..7] = secs.to_s
		else
			str[7] = secs.to_s
		end
		str
	end

end