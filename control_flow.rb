def admin_login(username, password)

  unless username.class == String && password.class == String 
    return "Access denied"
  end
  access = if username.downcase == "admin" && password == "12345" 
    "Access granted"
  else 
    "Access denied"
  end
  access
end

def hows_the_weather(temperature)
  weather = if temperature < 40
    "brisk"
  elsif temperature <= 65
    "a little chilly"
  elsif temperature <= 85
    "perfect"
  else 
    "too dang hot"
  end
  "It's #{weather} out there!"
end

def fizzbuzz(num)
  output = ""
  if num % 3 == 0
    output += "Fizz"
  end
  if num % 5 == 0
    output += "Buzz"
  end
  if output == ""
    output = num
  end
  output
end

def calculator(operation, num1, num2)
  legal_operation = ["+", "-", "*", "/"]

  unless legal_operation.include?(operation)
    puts "Invalid operation!" 
    return nil
  end

  return num1 + num2 if operation == "+"
  return num1 - num2 if operation == "-"
  return num1 * num2 if operation == "*"
  return num1 / num2 if operation == "/"
end