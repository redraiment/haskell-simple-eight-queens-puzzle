module Main where

import Options
import Queens

main :: IO ()
main = do
  solutions <- queens . size <$> options
  mapM_ print solutions
