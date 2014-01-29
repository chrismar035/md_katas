main = mapM_ (putStrLn . fizzbuzz) [1..100]

fizzbuzz :: Integer -> String
fizzbuzz number | number `by` 15 = "FizzBuzz"
                | number `by` 5 = "Buzz"
                | number `by` 3 = "Fizz"
                | otherwise = show number
                where by x y = x `rem` y == 0
