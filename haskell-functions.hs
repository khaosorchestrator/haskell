import Data.List
import System.IO

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
  | otherwise = "This level doesn't exists"