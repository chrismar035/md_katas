print (1..100).map { |i|
  buzz = "#{"Fizz" if i % 3 == 0}#{"Buzz" if i % 5 == 0}"
  buzz.empty? ? i : buzz
}.join("\n")
