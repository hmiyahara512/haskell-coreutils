import System.Environment

main = getArgs >>= \filenames ->
     mapM readFile filenames >>=
     mapM_ (\(x) ->
           putStrLn $ concat [
           x])
