{-
** At Coder Beginner Contest 172 **
Calc
-}

main :: IO ()
main = do
  -- input number
  a <- readLn
  putStrLn $ show $ a + a^2 + a^3

