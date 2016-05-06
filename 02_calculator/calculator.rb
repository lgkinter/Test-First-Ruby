def add(a,b)
  a+b
end

def subtract(a,b)
  a-b
end

def sum(arr)
  arr.inject(0, :+)
end

def multiply(*arr)
  arr.inject(1, :*)
end

def power(base, power)
  base ** power
end

def factorial(n)
  #product = 1
  #while n > 1
  #  product *= n
  #  n -= 1
  #end
  #product
  if n == 0
    1
  else
    n * factorial(n-1)
  end
end
