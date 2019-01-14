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

def reverse_upcase_noLTA(a)
 a = a.reverse.upcase.gsub /[LTA]/, ""
    return a
end


def array_42(z)
        if z.include? 42
            return true
        else 
            return false
    end

end

def magic_array(w)
    w = w.flatten.sort.map{|x| x * 2}.delete_if{|y| y % 3 == 0}.uniq
    return w
end