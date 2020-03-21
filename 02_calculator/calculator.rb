#write your code here
def add(a, b)
    a + b
end

def subtract(a, b)
    a - b
end

def multiply(*args)
    args.inject(:*)
end

def sum array
    array.sum
end

def power(a, b)
    a**b
end

def factorial num
    if num == 0
        1
    else
        (1..num).inject(:*)
    end
end