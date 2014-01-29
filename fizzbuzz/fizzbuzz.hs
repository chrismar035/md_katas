main = do
  numbers <- return $ take 100 [1,2..]
  mapM_ putStrLn $ map fizzbuzz numbers

fizzbuzz :: Integer -> String
fizzbuzz number = if (((mod number 5) == 0) && ((mod number 3) == 0)) then
                    "FizzBuzz"
                  else if ((mod number 5) == 0) then
                    "Buzz"
                  else if ((mod number 3) == 0) then
                    "Fizz"
                  else
                    show number
