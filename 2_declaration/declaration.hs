-- case
absMaybe x =
  case x of
    Nothing -> 0
    Just x
      | x < 0 -> -x
      | otherwise -> x

-- if
abs2 x = if x < 0 then -x else x

-- let
calculateArea r =
  let pi = 3.14
      square x = x * x
   in pi * square r

-- where
getArea r = pi * square r
  where
    pi = 3.14
    square x = x * x

main = do
  print (abs2 (-5)) -- 5
  print (calculateArea 3) -- 28.26
  print (getArea 3) -- 28.26
