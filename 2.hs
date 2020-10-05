fib :: [Int]
fib = 0 : go 0 1
  where go a b = b : go b (a+b)
  
main :: IO ()
main =  do
  print $ sum $ filter even $ takeWhile (<4000000) fib
