def translate(sentence)
  sentence = sentence.split
  sentence.each_with_index do |word, index|
    word = word.chars
    x = 0
    i = 0
    while x != word.length

      letter = word[0]
      if letter == letter.upcase && x == 0
        i = 1
      end
      if letter.downcase == "a" || letter.downcase == "e" || letter.downcase == "i" || letter.downcase == "o" || letter.downcase == "y" || letter.downcase == "u"
        break
      else

        if letter.downcase == "q" && word[1] == "u"
          2.times do
            word.delete_at(0)
          end
          word.push("qu")
        else
          word.delete_at(0)
          word.push(letter.downcase)
        end

      end
      x += 1
    end

    word.push("ay")
    word = word.join("")
    if i == 1
      word = word.capitalize
    end
    sentence[index] = word
  end

  sentence = sentence.join(" ")
  return sentence
end
