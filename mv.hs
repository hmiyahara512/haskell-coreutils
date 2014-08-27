import System.Environment
import System.Directory

main = do
  [f, g] <- getArgs
  s      <- readFile f
  writeFile g s
  removeFile f
