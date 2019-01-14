def translate(sentence)
  # On sépare la phrase en mot le cas échéant
  sentence = sentence.split
  sentence.each_with_index do |word, index|
    # On crée un tableau séparant chaque lettre de chaque mot
    word = word.chars
    # La variable x (un itérateur) va nous permettre de sortir de la boucle while
    x = 0
    # On initie la variable is_capitalized qui nous permettra de vérifier si la lettre est majuscule
    is_capitalized = 0

    while x != word.length
      # letter est la première lettre dans le array word
      letter = word[0]

      # On vérifie si la lettre est majuscule
      if letter == letter.upcase && x == 0
        is_capitalized = 1
      end

      # On vérifie si letter est une voyelle et on casse la boucle le cas échéant
      if letter.downcase == "a" || letter.downcase == "e" || letter.downcase == "i" || letter.downcase == "o" || letter.downcase == "y" || letter.downcase == "u"
        break
      else

        # On vérifie si deux lettres qui se suivent sont "qu"
        if letter.downcase == "q" && word[1] == "u"

          # On supprime les deux entrées
          2.times do
            word.delete_at(0)
          end

          # On ajoute "qu" à la fin du array
          word.push("qu")

        # Si la lettre est une consonne on la place à la fin
        else
          word.delete_at(0)
          word.push(letter.downcase)
        end

      end
      # On incrémente i à chaque tour
      x += 1
    end

    # On ajoute "ay" à la fin du array
    word.push("ay")
    # On réassemble le mot
    word = word.join("")

    # Si le mot était capitalize avant la boucle on recapitalize le mot
    if is_capitalized == 1
      word = word.capitalize
    end

    # On met les mots dans un tableau sentence
    sentence[index] = word
  end

  # On réassemble la phrase
  sentence = sentence.join(" ")
  return sentence
end
