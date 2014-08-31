import System.Environment
import System.IO

cat :: [String] -> IO ()
cat args = if args == []
    then catStdin
    else catFile args

catFile :: [String] -> IO ()
catFile p = (\fnames -> mapM readFile fnames) p
        >>= mapM_ (\(x) -> putStrLn $ concat [x])

catStdin :: IO ()
catStdin = useLineBuffering >> interact id

useLineBuffering :: IO ()
useLineBuffering = hSetBuffering stdout LineBuffering

main :: IO ()
main = do
     args <- getArgs
     cat args
