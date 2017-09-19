module Class0917 where

--1. Find the last element of a list.
prob1:: [a] -> a
prob1 [] = error "No last element ot be found in an empty list."
prob1 (x:xs) = case xs of
                [] -> x -- base case
                _  -> prob1 xs -- other
                -- good to have wildcard at bottom of case analysis

-- 2nd to last element of a list
prob2 :: [a] -> a
prob2 [] = error "No second to last element ot be found in an empty list."
prob2 (x:[]) = error "No second to last element ot be found in an list of length 1."
prob2 (x:(y:[])) = x        --base case
prob2 (x:(y:xs)) = prob2 (y:xs) --inductive clause

--Aside: loops R bad

-- n'th element of a list
-- not zero indexed lists
prob3 :: [a] -> Int -> a
prob3 [] _ = error "Empty list not searchable."
prob3 (x:xs) n
        | n == 1    = x --base case
        | n > 1     = prob3 xs (n - 1)--inductive clause
        | otherwise = error "??? Beats me."

--Prob 3 alt
--prob3` :: [a] -> Int -> a
--prob3` [] _ = error "Empty list not searchable."
--prob3` (x:xs) n case (n > 1) of
--                  True -> x
--                  False -> prob3` xs (n - 1)

--Find the number of elements in the list
prob4 :: [a] -> Int
prob4 []     = 0            -- base clause
prob4 (_:xs) = 1 + prob4 xs -- inductive clause

--Reverse a list
--Accumulator passing style (good practice)

prob5 :: [a] -> [a]
prob5 xs = prob5' [] xs
  where
    prob5' :: [a] -> [a] -> [a]
    prob5' acc [] = acc --base
    prob5' acc (x:xs) = prob5' (x:acc) xs --inductive