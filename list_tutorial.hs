import Text.Printf
lostNumbers = [4,8,15,16,23,42]
catNumbers = lostNumbers ++ [1, 2, 3]
charList = "Strings " ++ "are " ++ "char " ++ "lists."
explicitCharList = ['S', 't', 'r', 'i', 'n', 'g']
nestedList = [[], "Abcde", ['A', '3']]

cyclicList = ['a'..'z'] ++ cyclicList

charListp = ' ' : "String" -- : (colon) is the cons operator it appens a element to the front of a list

emptyList = []

-- common list functions
-- use of these on empty list aren't caught at compile time
main = do if not (null lostNumbers)
          then do printf "Original List: %s\n" (show lostNumbers)
                  printf "Head: %s\n" (show (head lostNumbers)) -- first element of list
                  printf "Tail: %s\n" (show (tail lostNumbers)) -- list without head
                  printf "Last: %s\n" (show (last lostNumbers)) -- last element
                  printf "Init: %s\n" (show (init lostNumbers)) -- list without last (Orthogonal to tail)
                  printf "Length: %s\n" (show (length lostNumbers)) -- length of list
                  printf "First letter of \"%s\" is %c\n" charList (charList !! 0) -- index a list
          else do print "Empty List" --print displays most things
