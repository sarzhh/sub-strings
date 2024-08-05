def entered_word
  puts "Enter the word"
  word = gets.chomp
  
end

word = entered_word

def entered_dictionary
  puts "Enter dictionary: "
 input = gets.chomp
 dictionary = input.split
  
end
dictionary = entered_dictionary

def substrings (word, dictionary)
  result = {} 
  word = word.downcase
  lowercase_dictionary = dictionary.map{|word| word.downcase}

  lowercase_dictionary.each do |substring|
     number_of_times = word.scan(substring).length
      result[substring] = number_of_times if number_of_times > 0
  end 
    result
end

substring = substrings(word, dictionary)
puts "The result is #{substring}"