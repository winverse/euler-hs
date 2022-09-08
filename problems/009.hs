-- A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
-- a^2 + b^2 = c^2
-- For example, 32 + 42 = 9 + 16 = 25 = 52.
-- There exists exactly one Pythagorean triplet for which a + b + c = 1000.
-- Find the product abc.

import Data.List

findTriplet :: Maybe (Int, Int, Int)
findTriplet = find(\(a, b, c) -> a^2 + b^2 == c^2) [(a, b, 1000-a-b) | a <- [1..999], b <- [1..1000 - a]]

main :: IO ()
main = print $ fmap(\(a, b, c) -> a*b*c) findTriplet