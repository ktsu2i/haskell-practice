-- length
length' :: [a] -> Int
length' [] = 0
length' (_:xs) = 1 + length' xs

-- sum
sum' :: [Int] -> Int
sum' [] = 0
sum' (x:xs) = x + sum' xs
-- sum' xs = foldr (+) 0 xs

-- lastMaybe
lastMaybe :: [a] -> Maybe a
lastMaybe [] = Nothing
lastMaybe [a] = Just a
lastMaybe (_:xs) = lastMaybe xs

-- append
append' :: [a] -> [a] -> [a]
append' [] ys = ys
append' (x:xs) ys = x : append' xs ys

-- map
map' :: (a -> b) -> [a] -> [b]
map' _ [] = []
map' f (x:xs) = f x : map' f xs

-- filter
filter' :: (a -> Bool) -> [a] -> [a]
filter' _ [] = []
filter' p (x:xs)
  | p x = x : filter' p xs
  | otherwise = filter' p xs

-- mapFold
mapFold :: (a -> b) -> [a] -> [b]
mapFold f = foldr (\x acc -> f x : acc) []

-- filterFold
filterFold :: (a -> Bool) -> [a] -> [a]
filterFold p = foldr (\x acc -> if p x then x : acc else acc) []

-- sumSquaresOfEvensFold
sumSquaresOfEvensFold :: [Int] -> Int
sumSquaresOfEvensFold = foldl (\acc x -> if even x then acc + x * x else acc) 0

-- reverseFold
reverseFold :: [a] -> [a]
reverseFold = foldl (\acc x -> x : acc) []

-- joinWithFold
joinWithFold :: String -> [String] -> String
joinWithFold sep = foldl (\acc s -> if null acc then s else acc ++ sep ++ s) ""
