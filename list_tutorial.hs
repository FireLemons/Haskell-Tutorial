import Text.Printf

lostNumbers = [4,8,15,16,23,42]

-- common list functions
-- use of these on empty list aren't caught at compile time
main = do if not (null lostNumbers)
          then do printf "Original List: %s\n" (show lostNumbers)
                  printf "Head: %s\n" (show (head lostNumbers)) -- first element of list
                  printf "Tail: %s\n" (show (tail lostNumbers)) -- list without head
                  printf "Last: %s\n" (show (last lostNumbers)) -- last element
                  printf "Init: %s\n" (show (init lostNumbers)) -- list without last (Orthogonal to tail)
                  printf "Length: %s\n" (show (length lostNumbers)) -- length of list
          else do print "Empty List"