import Prelude hiding (map)

map :: (a -> b) -> [a] -> [b]
map _ [] = []
map f (x : xs) = f x : map f xs

printMap = do
  print $ map id [1, 2, 3] -- [1, 2, 3]
  print $ map succ [1, 2, 3] -- [2, 3, 4]
  print $ map (\x -> x * x) [1, 2, 3] -- [1, 4, 9]

-- foldr
printFoldr = do
  print $ foldr (+) 0 [1, 2, 3] -- 1 + (2 + (3 + 0)) = 6
  print $ foldr (-) 0 [1, 2, 3] -- 1 - (2 - (3 - 0)) = 2

-- foldl
printFoldl = do
  print $ foldl (+) 0 [1, 2, 3] -- ((0 + 1) + 2) + 3 = 6
  print $ foldl (-) 0 [1, 2, 3] -- ((0 - 1) - 2) - 3 = -6

printLists = do
  print [1 .. 3] -- [1, 2, 3]
  print [1, 3 .. 7] -- [1, 3, 5, 7]
  print $ take 5 [1 ..] -- [1, 2, 3, 4, 5]

main = do
  printMap
  printFoldr
  printFoldl
  printLists
