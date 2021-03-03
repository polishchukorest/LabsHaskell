fibonacci :: [Int]
fibonacci = 0 : 1 : zipWith (+) fibonacci (tail fibonacci)

countFib :: Int -> Int -> Int
countFib a b = a 'div' b


g :: [a] -> Int -> [[a]]
g [] k = []
g xs k = [take (fibonacci !! (countFib (length xs) k) xs)]++ g 
  (drop fibonacci !! (countFib (length xs) k) (k+1)


main = do 
  print $ g [1..30] 1