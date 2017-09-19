data UpperCharList = A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z deriving (Enum, Show, Eq, Bounded)

next :: (Eq a, Bounded a, Enum a) => a -> a
next a = if a == maxBound then minBound else succ a

prob1 :: Char -> Char
prob1 x = succ x 