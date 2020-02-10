{-
** At Coder Beginners Selection **
Welcome to AtCoder
-}

main :: IO ()
main = do
  -- input number
  a <- readLn
  -- input space separated numbers 
  [b, c] <- map (read :: String -> Int) . words <$> getLine
  s <- getLine
  putStrLn $ show (a + b + c) ++ " " ++ s

