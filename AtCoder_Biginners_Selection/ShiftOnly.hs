{-
** AtCoder Beginners Selection **
Shift only
-}

main :: IO ()
main = do
  a <- getLine
  numList <- map (read :: String -> Int) . words <$> getLine
  print $ calcMaxOpNum numList

-- we calculate maximum number of operations
calcMaxOpNum :: [Int] -> Int
calcMaxOpNum [] = 0
calcMaxOpNum xs = if isListEven xs
                  then 1 + (calcMaxOpNum $ map (\x -> div x 2) xs)
                  else 0

-- whether the list is even
isListEven :: [Int] -> Bool
isListEven [] = True
isListEven (x:xs) = if mod x 2 == 0
                    then isListEven xs
                    else False
  
