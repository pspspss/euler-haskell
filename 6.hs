main :: IO ()
main = do
  print $ pow2 (sum [1..100]) - sum (map pow2 [1..100])
    where
        pow2 x = x*x
