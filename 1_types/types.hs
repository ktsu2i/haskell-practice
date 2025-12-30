{-
0. TL;DR

\| types         | description                           | example                         |
\|---------------|---------------------------------------|---------------------------------|
\| Bool          | booleans                              | True, False                     |
\| Int           | fixed-precision integers              | 123, 0o12, 0x1a                 |
\| Integer       | arbitrary-precision integers          | 123, 0o12, 0x1a                 |
\| Float         | real floating-point, single precision | 123, 0o12, 0x1a, 3.14, 1.23E-10 |
\| Double        | real floating-point, double precision | 123, 0o12, 0x1a, 3.14, 1.23E-10 |
\| Char          | characters                            | 'a', '\n'                       |
\| String        | strings                               | "abc\\n"                        |
\| (a1, ..., an) | tuples                                | (123, 'a')                      |
\| ()            | unit                                  | ()                              |
\| [a]           | lists                                 | [1,2,3]                         |
\| Maybe a       | maybe                                 | Just 5, Nothing                 |
-}

{-
1. Booleans

\| function | description              |
\|----------|--------------------------|
\| not x    | logical not              |
\| x && y   | logical and              |
\| x || y   | logical or               |
\| x == y   | equality                 |
\| x /= y   | inequality               |
\| x < y    | less than                |
\| x > y    | greater than             |
\| x <= y   | less than or equal to    |
\| x >= y   | greater than or equal to |
-}

printBooleans = do
  print (not True) -- False
  print (True && False) -- False
  print (True || False) -- True
  print (2 == 3) -- False
  print (2 /= 3) -- True
  print (2 < 3) -- True
  print (2 > 3) -- False
  print (2 <= 3) -- True
  print (2 >= 3) -- False

{-
2. Numbers

\| category | type    | description                           |
\|----------|---------|---------------------------------------|
\| integer  | Int     | fixed-precision integers              |
\|          | Integer | arbitrary-precision integers          |
\| float    | Float   | real floating-point, single precision |
\|          | Double  | real floating-point, double precision |
-}

printNumbers = do
  putStrLn $ "decimal: 123 -> " ++ show 123
  putStrLn $ "octal: 0o12 -> " ++ show 0o12
  putStrLn $ "hexadecimal: 0x1a -> " ++ show 0x1a

x = 5

y = 2

printNumbers2 = do
  putStrLn $ "-x: " ++ show (-x)
  putStrLn $ "negate x: " ++ show (negate x)
  putStrLn $ "abs x: " ++ show (abs x)

{-
3. Tuples

- Tuples with one element don't exist. It'll be just its type. e.g. (123) is Int.
- Tuples with exactly two elements have fst and snd functions.
-}

printTuples = do
  print (123, 'a')
  print (fst ("first", "second")) -- first (returns the first element)
  print (snd ("first", "second")) -- second (returns the second element)

{-
4. Unit

Unit is similar to void.
-}

-- Output
main = do
  putStrLn "------- 1. Booleans -------"
  printBooleans
  putStrLn "------- 2. Numbers -------"
  printNumbers
  printNumbers2
  putStrLn "------- 3. Tuples -------"
  printTuples
