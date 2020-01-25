def my_collect(students, language)
  if students.length == 0
    puts "There are no members!"
  end
  i = 0
  members_collection = []
  while students.length > i
  members_collection << yield(students[i])
  i += 1
  end
  members_collection
  y = 0
  upcase_language = []
  while language.length > y
    upcase_language << yield(language)
    y += 1
    end
  upcase_language
end

my_collect(["Tom Jones", "Tom Smith", "Jim Campagno"]) {|name| "Hello, #{name.split(" ".first)}"}
my_collect(["ruby", "javascript", "python", "objective-c"]) {|l|"#{l.upcase}" }