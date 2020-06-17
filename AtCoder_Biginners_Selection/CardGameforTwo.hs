{-
** AtCoder Beginners Selection**
Card Game for Two
-}
import Data.List
import Data.Ord

main :: IO ()
main = do
  getLine
  a_n <- map (read :: String -> Int) . words <$> getLine
  print $ alternateSum $ sortOn Down a_n

{-
交互に足していき、それを引いた値を返す
引数:降順のIntリスト
-}
alternateSum :: [Int] -> Int
alternateSum [] = 0
alternateSum [num] = num
alternateSum (fst:intList) = fst - head intList + alternateSum (tail intList)
