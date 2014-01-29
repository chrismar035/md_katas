main = do
  numbers <- return $ take 100 [1,2..]
  mapM_ putStrLn $ map fizzbuzz numbers

fizzbuzz :: Integer -> String
fizzbuzz number | ((mod number 15) == 0) = "FizzBuzz"
                | ((mod number 5) == 0) = "Buzz"
                | ((mod number 3) == 0) = "Fizz"
                | otherwise = show number
