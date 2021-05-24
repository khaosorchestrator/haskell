import Data.List ()
import System.IO ()

add :: Int -> Int -> Int
add x y = x + y

addTuples :: (Int, Int) -> (Int, Int) -> (Int, Int)
addTuples (x, y) (x2, y2) = (x + x2, y + y2)

youCanDo :: Int -> String
youCanDo 18 = "You can drive"
youCanDo 20 = "You can vote"
youCanDo 21 = "You're an adult"
youCanDo _ = "Nothing Important"

factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n - 1)

prodFact n = product [1 .. n]

isOdd :: Int -> Bool
isOdd n
  | n `mod` 2 == 0 = False
  | otherwise = True

isEven n = n `mod` 2 == 0

englishLevel :: String -> String
englishLevel str
  | str == "A1" = "Pre-Elementary"
  | str == "A2" = "Elementary"
  | str == "B1" = "Pre-Intermediate"
  | str == "B2" = "Intermediate"
  | str == "B3" = "Upper Intermediate"
  | str == "C1" = "Advanced I"
  | str == "C2" = "Advanced II"
  | str == "C3" = "Proficiency"
  | otherwise = "This level does not exists"

batAvgRating :: Double -> Double -> String
batAvgRating hits atBats
  | avg <= 0.200 = "Terrible Batting Average"
  | avg <= 0.250 = "Average Player"
  | avg <= 0.280 = "Your doing pretty good"
  | otherwise = "You're a Superstar"
  where
    avg = hits / atBats

getListItems :: [Int] -> String
getListItems [] = "Your list is empty"
--getListItems (x : []) = "Your list starts with " ++ show x
getListItems [x] = "Your list starts with " ++ show x
-- getListItems (x : y : []) = "Your list contains " ++ show x ++ " and " ++ show y
getListItems [x, y] = "Your list contains " ++ show x ++ " and " ++ show y
getListItems (x : xs) = "The 1st item is " ++ show x ++ " and rest are " ++ show xs

getFirstLetter :: String -> String
getFirstLetter all@(x : xs) = "The first letter in " ++ all ++ " is " ++ [x]