import Data.List
import System.IO

times4 :: Int -> Int
times4 n = n * 4

listTimes4 :: [Int] -> [Int]
listTimes4 = map times4

multBy2 :: [Int] -> [Int]
multBy2 [] = []
multBy2 (x : xr) = times4 x : multBy2 xr

--multBy2 = map times4

areStringEq :: [Char] -> [Char] -> Bool
areStringEq [] [] = True
areStringEq (x : xs) (y : ys) = x == y && areStringEq xs ys
areStringEq _ _ = False

doMult :: (Int -> Int) -> Int
doMult func = func 3

num3Times4 = doMult times4

getAddFunc :: Int -> (Int -> Int)
getAddFunc x y = x + y

adds3 = getAddFunc 3

fourPlus3 = adds3 4

threePlusList = map adds3

-- Lambada expression
--doubleNList n = map (\x -> x * 2) [1 .. n]
doubleNList n = map (* 2) [1 .. n]