-- The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
-- Find the sum of all the primes below two million.

isPrime :: Int -> Bool
isPrime n = not $ hasProperDivs n
  where
    hasProperDivs :: Int -> Bool
    hasProperDivs n = any (\x -> n `mod` x == 0) [2.. round $ sqrt $ fromIntegral n]

primes :: [Int]
primes = 2 : filter isPrime [3, 5 ..]

main :: IO ()
main = print $ sum $ takeWhile (<2000000) primes