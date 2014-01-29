main = do
  numbers <- return $ take 100 [1,2..]
  mapM_ putStrLn $ map fizzbuzz numbers

fizzbuzz :: Integer -> String
fizzbuzz number | (number `by` 15) = "FizzBuzz"
                | (number `by` 5) = "Buzz"
                | (number `by` 3) = "Fizz"
                | otherwise = show number
                where by x y = x `rem` y == 0
