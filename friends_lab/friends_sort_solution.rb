#this is a short solution check it out
def tv_show(people_list)
  tv_friends = people_list.each_with_object(Hash.new({})) do |person, hash|
    tv_show = person[:favourites][:tv_show]
    name = person[:name]

    hash.key?(tv_show) ? hash[tv_show] << name : hash[tv_show] = [name]
  end
  tv_friends.values.select { |value| value.length > 1 }.first
end
