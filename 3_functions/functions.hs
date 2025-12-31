-- regular functions
add x y = x + y

-- recursive functions
factorial x =
  if x == 0
    then 1
    else x * factorial (x - 1)

-- pattern matching
-- power x y = y^x
power 0 _ = 1.0
power x y = y * power (x - 1) y

-- power2
-- works with negative numbers
power2 0 _ = 1.0
power2 x y
  | x > 0 = y * power (x - 1) y
  | otherwise = 1.0 / power - x y

-- higher-order functions
twice x = 2 * x

main = do
  print $ map id [1, 2, 3] -- [1, 2, 3]
  print $ map succ [1, 2, 3] -- [2, 3, 4]
  print $ map twice [1, 2, 3] -- [2, 4, 6]

-- function expression
-- a.k.a. lambda abstraction, anonymous function, unnamed function, etc.
main2 = map (\x -> x * x) [1, 2, 3]

{-
function composition: (f . g) x = f (g x)
-}
