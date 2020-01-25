def my_collect(gold_members)
  if gold_members.length == 0
    puts "There are no members!"
  end
  i = 0
  members_collection = []
  while gold_members.length > i
  members_collection << yield(gold_members[i])
  i += 1
  end
  members_collection
end

my_collect(["Peter", "Thomas", "Montclaire", "Kristen"]) {|name| "Welcome to the club #{name}"}