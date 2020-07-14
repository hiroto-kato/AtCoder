{-
** At Coder Beginner Contest 172 **
Minor Change
-}

main :: IO ()
main = do
  -- input number
  a <- getLine
  b <- getLine
  print $ count a b

count :: String -> String -> Int
count [] [] = 0
count (x:xs) (y:ys) = if x == y then count xs ys
                      else 1 + count xs ys
