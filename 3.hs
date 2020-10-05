p3 :: Int -> Int
p3 n = go n 0 2
    where
        go n r c
            | c*c <= n = if mod n c == 0 then go (div n c) c c else go n r (c+1)
            | otherwise = if n > r then n else r

main :: IO ()
main = do
  print $ p3 600851475143
