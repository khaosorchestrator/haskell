import Data.List
import System.IO

myNumberList = [1..10]

newList = 2 : 7 : 21 : 33 :[]

primeNumbers = [3, 5, 7, 11]

pairsNumbers = [x | x <- [1..100], x `mod` 2 == 0]

oddNumbers = [x | x <- [1..100], x `mod` 2 == 1]

multiplicationTable = [[x * y | y <- [1..10]] | x <- [1..10]]

listReverse = reverse [x * 2 | x <- [1..100], x `mod` 4 == 1 ]

listSorted = sort listReverse