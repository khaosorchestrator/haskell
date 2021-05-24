import System.IO

sayHello :: IO ()
sayHello = do
  putStr "What's your name: "
  name <- getLine
  putStrLn $ "Hello " ++ name

whiteToFile :: IO ()
whiteToFile = do
  theFile <- openFile "text.tx" WriteMode
  hPutStrLn theFile "Random line of text"
  hClose theFile

readFromFile :: IO ()
readFromFile = do
  theFile2 <- openFile "text.txt" ReadMode
  contents <- hGetContents theFile2
  putStr contents
  hClose theFile2