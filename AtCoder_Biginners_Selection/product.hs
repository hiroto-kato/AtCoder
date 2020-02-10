{-
** AtCoder Beginners Selection **
products
-}

main :: IO ()
main = do
  [a, b] <- map read . words <$> getLine
  if mod (a * b) 2 == 0
  then putStrLn "Even"
  else putStrLn "Odd"
