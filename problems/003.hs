-- The prime factors of 13195 are 5, 7, 13 and 29.

-- What is the largest prime factor of the number 600851475143 ?

import Data.List

num :: Integer
num = 600851475143

divisor :: Integer -> Maybe Integer
divisor n = find (\x -> mod n x == 0) [2..n-1]

biggestPrimeFactor :: Integer -> Integer
biggestPrimeFactor n = case divisor n of
  Just k -> biggestPrimeFactor $ div n k
  Nothing -> n

main::IO()
main = print $ biggestPrimeFactor num

