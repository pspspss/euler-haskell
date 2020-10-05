p1 :: [Int]
p1 = [x | x <- [1..], mod x 3 == 0 || mod x 5 == 0]

main :: IO ()
main = do
  print $ sum $ takeWhile (<1000) p1
