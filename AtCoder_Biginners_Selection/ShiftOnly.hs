{-
問題：
 黒板にN個の正の整数 A1,...,ANが書かれています．
 黒板に書かれている整数がすべて偶数であるとき，次の操作を行うことができます．
 黒板に書かれている整数すべてを，2で割ったものに置き換える．
 最大で何回操作を行うことができるかを求めてください．

制約：
 1≤N≤200
 1≤Ai≤10^9
入力：
 N
 A1 A2 A3 ...
 12
 12 14 18
出力：
 最大操作回数
-}

main :: IO ()
main = do
--  putStrLn $ "****ShiftOnly.hs****"
  a <- getLine
  numList <- map (read :: String -> Int) . words <$> getLine
  print $ calcMaxOpNum numList

-- 最大操作回数を計算する関数
calcMaxOpNum :: [Int] -> Int
calcMaxOpNum [] = 0
calcMaxOpNum xs = if isListEven xs
                  then 1 + (calcMaxOpNum $ map (\x -> div x 2) xs)
                  else 0

-- リスト内が偶数かどうか
isListEven :: [Int] -> Bool
isListEven [] = True
isListEven (x:xs) = if mod x 2 == 0
                    then isListEven xs
                    else False
  
