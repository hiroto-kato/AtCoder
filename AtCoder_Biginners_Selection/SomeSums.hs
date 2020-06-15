{-
** AtCoder Beginners Selection**
Some Sums
-}
import Data.Char
import Data.List

main :: IO ()
main = do
  [n, a, b] <- map (read :: String -> Int). words <$> getLine
  print $ sum [u | u <- [1..n], a <= digitSum u, digitSum u <= b]
  
digitSum :: Int -> Int
digitSum = sum . map digitToInt . show
