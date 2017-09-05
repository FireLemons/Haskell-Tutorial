-- ternary operator
data Cond a = a :? a
 
infixl 0 ?
infixl 1 :?
 
(?) :: Bool -> Cond a -> a
True  ? (x :? _) = x
False ? (_ :? y) = y

doubleUs x y =  doubleMe x + doubleMe y
-- can define functions out of order
-- can't begin with uppercase letter
doubleMe x = x + x
doubleSmall x = ((x > 100) ? x :? 2 * x) + 1
