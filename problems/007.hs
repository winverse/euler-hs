-- By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
-- What is the 10000 1st prime number?

isPrime :: [Int] -> [Int]
isPrime (x:xs) = x : isPrime [ y | y <- xs, y `mod` x > 0 ]

primes = isPrime [2..]

main :: IO ()
main = print $ last $ take 10000 primes

