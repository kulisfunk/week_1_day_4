require( 'minitest/autorun' )
require_relative( 'friends' )
require ("minitest/rg")

class TestFriends < MiniTest::Test

  def setup

    @person1 = {
      name: "Rick",
      age: 12,
      monies: 1,
      friends: ["Jay","Keith","Dave", "Val"],
      favourites: {
        tv_show: "Friends",
        things_to_eat: ["charcuterie"]
      }
    }

    @person2 = {
      name: "Jay",
      age: 15,
      monies: 2,
      friends: ["Keith"],
      favourites: {
        tv_show: "Baywatch",
        things_to_eat: ["soup","bread"]
      }
    }

    @person3 = {
      name: "Val",
      age: 18,
      monies: 20,
      friends: ["Rick", "Jay"],
      favourites: {
        tv_show: "Pokemon",
        things_to_eat: ["ratatouille", "stew"]
      }
    }

    @person4 = {
      name: "Keith",
      age: 18,
      monies: 20,
      friends: ["Rick", "Jay", "Dave"],
      favourites: {
        tv_show: "Pokemon",
        things_to_eat: ["spaghetti"]
      }
    }

    @person5 = {
      name: "Dave",
      age: 20,
      monies: 100,
      friends: [],
      favourites: {
        tv_show: "Scrubs",
        things_to_eat: ["spinach"]
      }
    }

    @people = [@person1, @person2, @person3, @person4, @person5]

  end

  def test_getting_name
    result = get_name(@person5)
    assert_equal("Dave", result)
  end

  # 1. For a given person, return their favourite tv show
  def test_person_name
    result = person_name(@person3)
    assert_equal("Pokemon", result)
  end

  # 2. For a given person, check if they like a particular food
  def test_person_food
    result = person_food(@person3)
    assert_equal("ratatouille", result)
  end

  # 3. Allow a new friend to be added to a given person
  def test_person_add
    result = person_add(@person4, "Scooby Doo")
    assert_equal("Scooby Doo", result)
  end

  # 4. Allow a friend to be removed from a given person
  def test_person_remove
    result = person_remove(@person4, "Jay")
    assert_equal(false, result)
  end

  # 5. Find the total of everyone's money
  def test_money_sum
    result = money_sum(@people)
    assert_equal(143, result)
  end

  # 6. For two given people, allow the first person to loan a given value of money to the other


  # 7. Find the set of everyone's favourite food joined together
  def test_favourite_food
    result = favourite_food(@people)
    assert_equal(["bread", "charcuterie", "ratatouille", "soup", "spaghetti", "spinach", "stew"], result)
  end
  # 8. Find people with no friends
  def test_billy_no_mates
    result = billy_no_mates(@people)
    assert_equal("Dave", result)
  end


end
  # VERY tough
  # Find the people who have the same favourite tv show
