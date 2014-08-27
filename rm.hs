import System.Environment
import System.Directory

main = do
  [f] <- getArgs
  removeFile f
