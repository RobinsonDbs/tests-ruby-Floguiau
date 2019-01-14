# Fonction pour aditionner
def add(x, y)
  add_value = x + y
  return add_value
end

# Fonction pour soustraire
def substract(x, y)
  sub_value = x - y
  return sub_value
end

# Fonction pour aditionner un array
def sum(values)
  sum_value = 0
  values.each do |value|
    sum_value += value
  end
  return sum_value
end

# Fonction pour mulitiplier
def multiply(x, y)
  mult_value = x * y
  return mult_value
end

# Fonction pour faire des exposants
def power(x, y)
  pow_value = x ** y
  return pow_value
end

# Fonction pour calculer des factorielles
def factorial(x)
  case x
  when 0
    fact_value = 1
  else
    fact_value = (1..x).inject(:*)
  end
  return fact_value
end
