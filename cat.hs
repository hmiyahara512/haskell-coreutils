import System.Environment

main = getArgs >>= \fnames ->
     mapM readFile fnames >>=
     mapM_ (\(x) ->
           putStrLn $ concat [
           x])
