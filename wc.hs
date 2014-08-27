import System.Environment

main = getArgs >>= \fnames ->
     mapM readFile fnames >>=
     mapM_ (\(x,y) ->
           putStrLn $ concat [
           show.length $ lines y, " ",
           show.length $ words y, " ",
           show.length.unwords $ words y, " ",
           x]).zip fnames
