{-
** AtCoder Beginners Selection**
Traveling
-}

import Control.Monad

main :: IO ()
main = do
  n <- readLn
  -- [[t_n,x_n,y_n]]がlistに入る
  txyList <- (replicateM :: Applicative m => Int -> m [Int] -> m [[Int]]) n $ map (read :: String -> Int) . words <$> getLine
  putStrLn $ if analyze [0,0,0] txyList then "Yes" else "No"

-- [0,0,0]から初めて次の点に到達できるか
analyze :: [Int] -> [[Int]] -> Bool
analyze l [txy] = reachable l txy
analyze l (txy:txys) = reachable l txy && analyze txy txys

-- 到達できるかどうかを調べる関数
-- 移動距離が移動時間以下 && 移動時間と移動距離の偶奇が同一 => 到達可能
reachable :: [Int] -> [Int] -> Bool
reachable [t1, x1, y1] [t2, x2, y2] =
  (dt >= dx + dy) && (mod (dt - dx - dy) 2 == 0)
  where dx = abs(x2-x1); dy = abs(y2-y1); dt = t2-t1

