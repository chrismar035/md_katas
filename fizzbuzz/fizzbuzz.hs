main = do
  numbers <- take 100 [1,2..]
  map (fizzbuzz) numbers

fizzbuzz number = if (number % 5 && number % 3) then
                    putStrLn "FizzBuzz"
                  else if (number % 5) then
                    putStrLn "Buzz"
                  else if (number % 3) then
                    putStrLn "Fizz"
