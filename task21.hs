splitList :: [a] -> Int -> [[a]]
splitList [] k = []
splitList xs k = [take k xs] ++ splitList (drop k xs) (k+1)



main = do
  print $ splitList [1..50] 1