square :: Int -> Int
square n = n ^ 2

listSum :: [Int] -> Int
listSum [] = 0
listSum (x:xs) = x + listSum xs

main :: IO ()
main = print $ (square $ listSum [1..100]) - (sum $ map square [1..100])
