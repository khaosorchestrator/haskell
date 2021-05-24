data Customer = Customer String String Double deriving (Show)

lucasAlmeida :: Customer
lucasAlmeida = Customer "Lucas Almeida" "123 Main" 2000.50

getBalance :: Customer -> Double
getBalance ((Customer _ _ b)) = b

data RPS = Rock | Paper | Scissors

shoot :: RPS -> RPS -> String
shoot Paper Rock = "Paper beats Rock"
shoot Rock Scissors = "Rock beats Scissors"
shoot Scissors Paper = "Scissors beat Paper"
shoot Scissors Rock = "Scissors loses to Rock"
shoot Paper Scissors = "Paper loses to Scissors"
shoot Rock Paper = "Rock Loses to Paper"
shoot _ _ = "Error"

data Shape = Circle Float Float Float | Rectangle Float Float Float Float deriving (Show)

area :: Shape -> Float
area ((Circle _ _ r)) = pi * r ^ 2
area (Rectangle x y x2 y2) = (abs $ x2 - x) * (abs $ y2 - y)

areaOfCircle :: Float
areaOfCircle = area (Circle 50 60 20)

areaOfRect :: Float
areaOfRect = area $ Rectangle 60 60 40 40