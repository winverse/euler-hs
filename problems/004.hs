-- A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

-- Find the largest palindrome made from the product of two 3-digit numbers.

isPalindrome :: Int -> Bool
isPalindrome n = let str = show n in str  == reverse str

isThreeDigit :: Int -> Bool
isThreeDigit n = n `elem` [x*y | x <- [100..999], y <- [100..999]]

main :: IO ()
main = print $ head $ filter isThreeDigit $ filter isPalindrome [999*999, 999*999-1 ..]
