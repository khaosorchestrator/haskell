data BaseballPlayer = Pitcher | Catcher | Infielder | Outfield deriving (Show)

barryBonds :: BaseballPlayer -> Bool
barryBonds Outfield = True

barryInfOf :: IO ()
barryInfOf = print (barryBonds Outfield)
