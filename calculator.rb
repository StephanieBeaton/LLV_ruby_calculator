class Calculator

  def add(a, b)
    add1 = a + b
    puts "#{a} + #{b} is #{add1}"
  end

  def subtract(a, b)
    sub = a - b
    puts "#{a} - #{b} is #{sub}"
  end

  def multiply(a, b)
    multiply1 = a * b
    puts "#{a} * #{b} is #{multiply1}"
  end

  def divide(a, b)
    divide1 = a / b
    puts "#{a} / #{b} is #{divide1}"
  end

  def calculate(first_operand, operator, second_operand)

    operatorHash = { '+' => :add,
                     '-' => :subtract,
                     '*' => :multiply,
                     '/' => :divide
                   }

    oper_symbol = operatorHash[operator]

    #puts "oper_symbol = #{oper_symbol}"

    func = method(oper_symbol)

    answer = func.call(first_operand, second_operand)

    return answer

    # alternative solution
    #
    #case operator
    #when '+'
    #  puts "add"
    #when '-'
    #  puts "substract"
    #when '*'
    #  puts "multiply"
    #when '/'
    #  puts "divide"
    #else
    #  puts "Invalid operator"
    #end
  end

end

my_calculator = Calculator.new

#result = my_calculator.calculate(2, '+', 4)

#result = my_calculator.calculate(4, '-', 2)

#result = my_calculator.calculate(2, '*', 4)

#my_calculator.calculate(6, '/', 3)







first_operand = 0

while first_operand != 'q' do
  puts "Please enter the first number"
  first_operand = gets.chomp

  # puts "first_operand = #{first_operand}"

  if (first_operand != 'q')

    first_operand = first_operand.to_i

    puts "Please enter one operator +, -, *, or /"
    operator = gets.chomp.to_s

    puts "please enter the second number"
    second_operand = gets.chomp.to_i

    my_calculator.calculate(first_operand, operator, second_operand)

    # puts "The result is #{result}."
  end
end


