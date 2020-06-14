{-
** AtCoder Beginners Selection **
Coins
-}
main :: IO ()
main = do
  -- 読み込み
  a <- readLn
  b <- readLn
  c <- readLn
  x <- readLn
  -- 表示
  print $ length [() | u <- [0..a], v <- [0..b], w <- [0..c], 500*u+100*v+50*w == x]
