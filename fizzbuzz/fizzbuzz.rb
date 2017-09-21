def fizzbuzz(number)
  # result = ""

  #if number divisible by 3, add fizz to result
  return "Fizzbuzz!" if(number % 3 == 0 && (number % 5 ==0))
    # result = result + "Fizz"
  # end
  return "Fizz" if(number % 3 == 0)
  #if number divisible by 5, add fizz to result
  return "Buzz" if(number % 5 == 0)
    # result = result + "buzz"
  # end
  #otherwise, make result the number as a string
  return (number.to_s)
  # if (result == "")
    # result = number.to_s()
  # end

  # if (result == "Fizzbuzz")
    # result = result + "!"
  # end

  # return result.capitalize()

end
