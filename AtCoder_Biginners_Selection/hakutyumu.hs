{-
** AtCoder Beginners Selection**
白昼夢
-}

import Data.List

main :: IO ()
main = do
  s <- getLine
  -- 入力文字を逆からマッチしているか調べる
  if match (reverse s) then putStrLn "YES" else putStrLn "NO"

-- 特定の文字列とマッチしているか    
match :: String -> Bool
match "" = True
match ('m':'a':'e':'r':'d':str) = match str
match ('r':'e':'m':'a':'e':'r':'d':str) = match str
match ('e':'s':'a':'r':'e':str) = match str
match ('r':'e':'s':'a':'r':'e':str) = match str
match _ = False
                   
