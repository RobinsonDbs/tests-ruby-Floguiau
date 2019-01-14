def echo (word)
	return word
end

def shout (word)
	return word.upcase
end

def repeat (word, time=2)
	case time
	when 0
		words = ""
	else
		words = "#{word} " * (time - 1) + word
	end
	return words
end

def start_of_word (word, index)
	case index
	when 0
		return "T'es chiant"
	when nil
		return "Essai encore"
	else
		return word[0..(index-1)]
	end
end

def first_word (sentence)
	return sentence.split.first
end

def titleize (sentence)
	sentence = sentence.capitalize
	sentence = sentence.split
	sentence.each_with_index do |word, index|
		if word.length > 3
			word = word.capitalize
			sentence[index] = word
		end
	end
	sentence = sentence.join(" ")
	return sentence
end
