def get_name(person)
  return person[:name]
end

def get_tv_show(person)
  return person[:favourites][:tv_show]
end

def likes_to_eat(person, food)
return person[:favourites][:snacks].include?(food)
end

def number_of_friends(person, new_friend_name)
person[:friends].push(new_friend_name)
return person[:friends].length
end


def number_of_friends(person, new_friend_name)
person[:friends].push(new_friend_name)
return person[:friends].length
end

def number_of_friends_after_removing_one(person, name_to_remove)
  person[:friends].delete(name_to_remove)
  return person[:friends].length
end

def the_total_of_everyone_money(the_array_of_people)
  total_money = 0
  for each_person in the_array_of_people
    total_money += each_person[:monies]
  end
  return total_money
end


def lend_money(lender, lendee, amount)
  lender[:monies] -= amount
  lendee[:monies] += amount
end
