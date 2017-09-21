def fizzbuzz(number)
  if (number % 5 == 0)
    return "Buzz"
  end
end


def calculate_volume_cube(length, height, width)
  return length * height * width
end

def find_chicken(chickens)
  for chicken in chickens
    if chicken == "Henrietta"
      return "Found your chook!"
    end
  end
end

def manipulate(number)
  # number += 10
  #
  # number /= 2
  #
  # number -= 3
  add_ten(number)
  half(number)
  take_away_three(number)
end
