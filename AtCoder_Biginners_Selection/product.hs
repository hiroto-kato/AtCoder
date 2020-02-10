{-
問題：
  二つの正整数a,bの積が偶数か奇数か判定しなさい。
制約：
  * 1 <= a,b <= 10000
  * a,bは整数
入力：
  a b
出力：
  積が奇数なら'Odd'と、偶数なら'Even'と出力
-}

main :: IO ()
main = do
  putStrLn "****products.hs****"
  [a, b] <- map read . words <$> getLine
  if mod (a * b) 2 == 0
  then putStrLn "Even"
  else putStrLn "Odd"
