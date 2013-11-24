head' :: [a] -> a
head' [] = error "Can't call head on an empty list, dummy!"
head' (x:_) = x

tell :: (Show a) => [a] -> String
tell [] = "The list is empty"
tell (x:[]) = "The list has one element: " ++ show x
tell (x:y:[]) = "The list has two elements: " ++ show x ++ " and " ++ show y
tell (x:y:_) = "This list is long.  The first two elements are: " ++ show x ++ " and " ++ show y

length' :: (Num b) => [a] -> b
length' [] = 0
length' (_:xs) = 1 + length' xs

sum' :: (Num a) => [a] -> a
sum' [] = 0
sum' (x:xs) = x + sum' xs

describeList :: [a] -> String
describeList xs = "The list is " ++ case xs of  []  -> "empty."
                                                [x] -> "a singleton list."
                                                xs  -> "a longer list."

describeList2 :: [a] -> String
describeList2 xs = "The list is " ++ what xs
    where   what []  = "empty."
            what [x] = "a singleton list."
            what xs  = "a longer list."