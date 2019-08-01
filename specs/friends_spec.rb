require( 'minitest/autorun' )
require( 'minitest/rg')
require_relative( '../friends' )

class TestFriends < MiniTest::Test

  def setup

    @person1 = {
      name: "Shaggy",
      age: 12,
      monies: 1,
      friends: ["Velma","Fred","Daphne", "Scooby"],
      favourites: {
        tv_show: "Friends",
        snacks: ["charcuterie"]
      }
    }

    @person2 = {
      name: "Velma",
      age: 15,
      monies: 2,
      friends: ["Fred"],
      favourites: {
        tv_show: "Baywatch",
        snacks: ["soup","bread"]
      }
    }

    @person3 = {
      name: "Scooby",
      age: 18,
      monies: 20,
      friends: ["Shaggy", "Velma"],
      favourites: {
        tv_show: "Pokemon",
        snacks: ["Scooby snacks"]
      }
    }

    @person4 = {
      name: "Fred",
      age: 18,
      monies: 20,
      friends: ["Shaggy", "Velma", "Daphne"],
      favourites: {
        tv_show: "X-Files",
        snacks: ["spaghetti", "ratatouille"]
      }
    }

    @person5 = {
      name: "Daphne",
      age: 20,
      monies: 100,
      friends: [],
      favourites: {
        tv_show: "X-Files",
        snacks: ["spinach"]
      }
    }

    @people = [@person1, @person2, @person3, @person4, @person5]

  end

  # 1. For a given person, return their name
  def test_getting_name
    result = get_name(@person5)
    assert_equal("Daphne", result)
  end

  # 2. For a given person, return their favourite tv show
  # (e.g. the function favourite_tv_show(@person2) should return the string "Baywatch")
def test_getting_favourite_tv_show
  result = get_tv_show(@person2)
  assert_equal("Baywatch", result)
end

  # 3. For a given person, check if they like a particular food
  # (e.g. the function likes_to_eat(@person2, "bread") should return true, likes_to_eat(@person3, "spinach") should return false)
def test_if_person_likes_particular_food
  result = likes_to_eat(@person1, "charcuterie")
  assert_equal(true, result)
end

  # 4. For a given person, add a new name to their list of friends
  # (e.g. the function add_friend(@person2, "Scrappy-Doo") should add Scrappy-Doo to the friends.)
  # (hint: This function should not return anything. After the function call, check for the length of the friends array to test it!)

def test_number_of_friends
  result = number_of_friends(@person4, "New Friend")
  assert_equal(4, result)
end

# def test_number_of_friends
#   number_of_friends(@person4, "Scrappy Doo")
#   assert_equal(["Fred", "Scrappy Doo"], @person4[:friends])
# end


  # 5. For a given person, remove a specific name from their list of friends
  # (hint: Same as above, testing for the length of the array should be sufficient)

def test_number_of_friends_after_removing_one
  result = number_of_friends_after_removing_one(@person1, "Fred")
    assert_equal(3, result)
end

  # 6. Find the total of everyone's money
  # (hint: use the @people array, remember how we checked the total number of eggs yesterday?)
def test_the_total_of_everyone_money
  result = the_total_of_everyone_money(@people)
  assert_equal(143, result)
end


  # 7. For two given people, allow the first person to loan a given value of money to the other
  # (hint: our function will probably need 3 arguments passed to it... the lender, the lendee, and the amount for this function)
  # (hint2: You should test if both the lender's and the lendee's money have changed, maybe two assertions?)
# def test_lendee_and_lender_money
#   result = lending_money(@person5, @person1, 20)
#   assert_equal(80, result)
#   assert_equal(21, result)
# end

def test_lend_money
  lend_money(@person2, @person1, 2)
  assert_equal(0, @person2[:monies])
  assert_equal(3, @person1[:monies])
end

  # 8. Find the set of everyone's favourite food joined together
  # (hint: concatenate the favourites/snack arrays together)


  # 9. Find people with no friends
  # (hint: return an array, there might be more people in the future with no friends!)

end
