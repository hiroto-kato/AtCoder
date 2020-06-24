{-
** AtCoder Beginners Selection**
Otoshidama
-}

main :: IO ()
main = do
  -- N枚,Y円読み込み
  [n, y] <- map (read :: String -> Int) . words <$> getLine
  -- N枚でY円になる組み合わせを計算
  let list = [(x1, x2, x3) | x1 <- [0..n], x2 <- [0..(n-x1)], x3 <- [0..(n-x1-x2)], x1 + x2 + x3 == n, 10000*x1 + 5000*x2 + 1000*x3 == y]

  -- 表示
  case list of [] -> putStrLn "-1 -1 -1"
               ls -> putStrLn $ show a1 ++ " " ++ show a2 ++ " " ++ show a3
                 where (a1, a2, a3) = head ls
