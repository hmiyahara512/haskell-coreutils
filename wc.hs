import System.Environment

main = getArgs >>= \filenames ->
     mapM readFile filenames >>=
     mapM_ (\(x,y) ->
           putStrLn $ concat [
           show.length $ lines y, " ",
           show.length $ words y, " ",
           show.length.unwords $ words y, " ",
           x]).zip filenames
