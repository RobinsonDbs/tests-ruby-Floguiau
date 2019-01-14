def add(x, y)
  add_value = x + y
  return add_value
end

def substract(x, y)
  sub_value = x - y
  return sub_value
end

def sum(values)
  sum_value = 0
  values.each do |value|
    sum_value += value
  end
  return sum_value
end

def multiply(x, y)
  mult_value = x * y
  return mult_value
end

def power(x, y)
  pow_value = x ** y
  return pow_value
end

def factorial(x)
  case x
  when 0
    fact_value = 1
  else
    fact_value = (1..x).inject(:*)
  end
  return fact_value
end
