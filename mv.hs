import System.Environment
import System.Directory

main = do
  [f, g] <- getArgs
  renameFile f g
