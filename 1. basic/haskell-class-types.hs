-- ---------- TYPE CLASSES ----------
-- Num, Eq, Ord and Show are type classes
-- Type classes correspond to sets of types which have certain operations
-- defined for them.
-- Polymorphic functions, which work with multiple parameter types, define
-- the types it works with through the use of type classes
-- For example (+) works with parameters of the type Num
-- :t (+) = Num a => a -> a -> a
-- This says that for any type a, as long as a is an instance of Num, + can take
-- 2 values and return an a of type Num

-- Create an Employee and add the ability to check if they are equal
import System.IO

data Employee = Employee {name :: String, position :: String, idNum :: Int} deriving (Eq, Show)

joseTony :: Employee
joseTony = Employee {name = "José Tony", position = "Front-End Engineer", idNum = 1000}

adilsonFuxe :: Employee
adilsonFuxe = Employee {name = "Adilson Fuxe", position = "Backend-End Engineer", idNum = 1001}

data ShirtSize = S | M | L

instance Eq ShirtSize where
  S == S = True
  M == M = True
  L == L = True
  _ == _ = False

instance Show ShirtSize where
  show S = "Small"
  show M = "Medium"
  show L = "Large"

smallAvail :: Bool
smallAvail = S `elem` [S, M, L]

theSize :: String
theSize = show S

class MyEq a where areEqual :: a -> a -> Bool

instance MyEq ShirtSize where
  areEqual S S = True
  areEqual M M = True
  areEqual L L = True
  areEqual _ _ = False

newSize :: Bool
newSize = areEqual M M
