sum' :: (Num a) => [a] -> a
sum' xs = foldl (+) 0 xs

elem' :: (Eq a) => a -> [a] -> Bool
elem' y ys = foldl (\acc x -> if x ==y then True else acc) False ys