{-
** AtCoder Beginners Selection**
Kagami Mochi
-}
import Control.Monad
import Data.List

main :: IO ()
main = do
  n <- readLn
  di <- (replicateM :: Applicative m => Int -> m Int -> m [Int]) n readLn
  print $ length $ nub di

