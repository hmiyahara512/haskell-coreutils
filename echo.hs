module Main where

import System.Environment

echo :: IO ()
-- echo = putStrLn . tail . foldl (\x y -> x ++ ' ':y) "" =<< getArgs
echo = getArgs >>= putStrLn . tail . foldl (\x y -> x ++ ' ':y) ""

main :: IO ()
main = echo
