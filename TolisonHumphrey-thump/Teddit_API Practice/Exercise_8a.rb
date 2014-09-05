#Building and sorting an array.

monk_array=[] 
word = "yo"

until word == "\n"
	puts "Type as many words as you want"
	word = gets

	monk_array.push word
	puts monk_array.sort 
end

