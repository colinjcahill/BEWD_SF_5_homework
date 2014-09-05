require 'yaml'

def yaml_load filename
	yaml_string = File.read filename
	YAML::load yaml_string
end

birthday_hash = yaml_load 'file_with_hash_info.txt'

puts birthday_hash
puts
puts birthday_hash["John"]