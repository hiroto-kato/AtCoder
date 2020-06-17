{-
** AtCoder Beginners Selection **
Placing Marbles
-}

count :: String -> Int
count [] = 0
count (x:xs) = if x == '0'
               then 0 + count xs
               else 1 + count xs
  
main :: IO ()
main = do
  a <- getLine
  print $ show $ count a
