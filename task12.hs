import Data.List

myfunc:: [Int] -> [Int]
myfunc [] = []
myfunc xs = [x| x <-xs, length(filter(==x)xs)==2]
--nub function!

main = do
  print $ myfunc [7,1,2,3,3,2,5,5,6,11,7,25]
    