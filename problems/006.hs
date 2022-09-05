-- The sum of the squares of the first ten natural numbers is,
-- The square of the sum of the first ten natural numbers is,
-- Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is .
-- Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

square :: Int -> Int
square n = n ^ 2

listSum :: [Int] -> Int
listSum [] = 0
listSum (x:xs) = x + listSum xs

main :: IO ()
main = print $ (square $ listSum [1..100]) - (sum $ map square [1..100])
