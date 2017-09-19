lostNumbers = [4,8,15,16,23,42]
catNumbers = lostNumbers ++ [1, 2, 3]
charList = "Strings " ++ "are " ++ "char " ++ "lists."
explicitCharList = ['S', 't', 'r', 'i', 'n', 'g']
nestedList = [[], "Abcde", ['A', '3']]

cyclicList = ['a'..'z'] ++ cyclicList

charListp = ' ' : "String" -- : (colon) is the cons operator it appens a element to the front of a list

emptyList = []

--print a string
main = do putStrLn "test"
--indexing operator is !!
          putChar (charList !! 0)
          putChar '\n'
          -- dislays most things
          print 45
