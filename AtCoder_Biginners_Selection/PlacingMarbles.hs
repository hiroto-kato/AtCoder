{-
問題：
  1,2,3の番号がついた 3つのマスからなるマス目を持っています。
  各マスには 0 か 1 が書かれており、マス i には si が書かれています。
  1 が書かれたマスにビー玉を置きます。
  ビー玉が置かれるマスがいくつあるか求めてください。

制約：
  s1,s2,s3は1あるいは0
入力：
  s1s2s3
出力：
  答えを出力
-}

count :: String -> Int
count [] = 0
count (x:xs) = if x == '0'
               then 0 + (count xs)
               else 1 + (count xs)
  
main :: IO ()
main = do
  putStrLn "****PlacingMarbles.hs****"
  a <- getLine
  putStrLn $ show $ count a
