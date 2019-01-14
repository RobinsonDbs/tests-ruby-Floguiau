# Fonction pour retrouver identifier si l'une des variables est un nil sinon identifie la plus grande des 3 variables
def who_is_bigger(a, b, c)
    if a == nil || b == nil || c == nil
        return "nil detected"
    elsif a > b && a > c
        return "a is bigger"
    elsif b > a && b > c
        return "b is bigger"
    elsif c > a && c > b
        return "c is bigger"
    else
        return "error"

    end
end

# Fonction pour inverser un string, le mettre en majuscule et supprimer les L, T, A
def reverse_upcase_noLTA(a)
 a = a.reverse.upcase.gsub /[LTA]/, ""
    return a
end

# Identifie si le array inclu un 42
def array_42(z)
        if z.include? 42
            return true
        else
            return false
    end

end

# Fonction pour aplatir, rangé par ordre croissant, multiplié chaque élément par deux, supprimer les multiples de 3 et supprimer les doublons
def magic_array(w)
    w = w.flatten.sort.map{|x| x * 2}.delete_if{|y| y % 3 == 0}.uniq
    return w
end
