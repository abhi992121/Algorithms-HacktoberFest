import Data.List
-- simple code of quicksort in haskell
-- its easy


quicksort :: [Int] -> (Int -> Int -> Bool) -> [Int]
quicksort [] _ = []
quicksort (x:xs) comparator = (quicksort lessthenhead (comparator)) ++ [x] ++ (quicksort biggerthenhead (comparator) )
    where 
        lessthenhead = filter (comparator x) xs
        biggerthenhead = (xs \\ lessthenhead)

main = do
    unsortedList <- readLn :: IO [Int]
    let ascending = quicksort unsortedList (<)
    let descending = quicksort unsortedList (>)
    print ascending 
    print descending
