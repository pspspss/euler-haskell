p4 :: Int -> Int
p4 = go 0
    where 
        go a b
            | b == 0 = a
            | otherwise = let (q,r) = quotRem b 10 in go (a*10 + r) q

main :: IO ()
main = do
  print $ maximum $ filter (\x -> x == p4 x) [x*y | x <- [100..999], y <-[100..999]]
  
