import Data.List

quicksort :: Ord a => [a] -> [a]
quicksort []     = []
quicksort (p:xs) = (quicksort lesser) ++ [p] ++ (quicksort greater)
    where
        lesser  = filter (< p) xs
        greater = filter (>= p) xs


nMax :: Int -> [Int] ->[Int]
nMax _ [] = []
nMax a (xs) = [x| x <- xs, x `elem` z] 
  where z = drop a (reverse (quicksort (xs)))



main = do
    print $ nMax 5 [5,1,2,6,55,12,10,20,30,1,2,3,5]
    
