def get_name(person)
  return person[:name]
end

def person_name(name)
    return name[:favourites][:tv_show]
end

def person_food(name)
    return name[:favourites][:things_to_eat][0]
end

def person_add(person, friend)
  @person4[:friends].push friend
  return @person4[:friends].last
end

def person_remove(person, friend)
  @person4[:friends].delete(friend)
  return @person4[:friends].include?(friend)
end

def money_sum(array)
  total_money = 0
    for people in array
      total_money += people[:monies]
    end
    return total_money
end

def favourite_food(array)
  all_food = []
  for people in array
    all_food << people[:favourites][:things_to_eat]
    all_food.flatten!
  end
  return all_food.sort
end

def billy_no_mates(array)
  for people in array
    if people[:friends].empty? == true
      return people[:name]
    end
  end
end
