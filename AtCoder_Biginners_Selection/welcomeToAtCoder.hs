{-
問題：
  整数a,b,cと文字列sが与えられます。a+b+cの計算結果と文字列sを並べて表示しなさい。
制約：
  * 1 <=  a,b,c <= 1000
  * 1 <= |s| <= 100
入力：
  a
  b c
  s
出力：
  a+b+c s\n
-}

main :: IO ()
main = do
  putStrLn $ "****welcomeToAtCoder.hs****"
  -- 整数の入力
  a <- readLn
  -- スペース区切りの整数の入力
  [b, c] <- map (read :: String -> Int) . words <$> getLine
  s <- getLine
  
  putStrLn $ show (a + b + c) ++ " " ++ s

