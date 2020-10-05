p5 :: Int -> Int
p5 m = go m 1 20
    where
        go m a b
            | b == 0 = a
            | otherwise = if mod a b == 0 then go m a (b-1) else go m (a+1) m

main :: IO ()
main = do
  print $ p5 20
