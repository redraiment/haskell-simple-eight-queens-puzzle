module Queens (queens) where

import Data.List

contains :: (Eq a) => (a, (a, a)) -> Bool
contains (value, (left, right)) = value == left || value == right

safe :: [Int] -> Bool
safe [] = True
safe (x:xs) = (not $ any contains $ zip xs $ map offset [1..]) && safe xs
  where
    offset = ((,)) <$> (+) x <*> (-) x

queens :: Int -> [[Int]]
queens n = filter safe $ permutations [1..n]
