
def didnt_hear
	puts "Grandma: HUH?! SPEAK UP!"
	puts "(Try yelling (all caps). Grandma has hearing issues as you know.)"
	question
end

def heard
	puts "Grandma: NO, NOT SINCE 1938!"
	question
end

def bye_3_check
	bye = 1
	until bye == 3
			puts "(One more time in all caps. She didnt hear it)"
			bye_two = gets.chomp
			if bye_two == "BYE"
				bye = bye + 1
			else
				bye_loop
			end
	end
	puts "Grandma: Fine. Go away! I never liked you!"
end


def bye_loop
	puts "(looks like you are trying to say Bye. Try again, remember to yell)"
	bye_response = gets.chomp
	if bye_response == "bye".upcase
		bye_3_check
	else
		question
	end
end


def question
	puts "(Say something to Grandma or say bye)"
	to_grandma = gets.chomp
	if to_grandma == to_grandma.upcase && to_grandma.downcase != "bye"
		heard
	elsif to_grandma == "bye" || to_grandma == "Bye"
		bye_loop
	elsif to_grandma == "BYE"
		bye_3_check
	else didnt_hear
	end
end


question

