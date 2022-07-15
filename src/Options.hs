module Options (Options, size, options) where

import Options.Applicative
import Data.Semigroup ((<>))

data Options = Options { size :: Int } deriving (Eq, Show)

parser :: Parser Options
parser = Options
  <$> option auto
  ( long "size"
    <> short 's'
    <> help "chessboard size"
    <> showDefault
    <> value 8
    <> metavar "INT" )

options :: IO Options
options = execParser informations
  where
    informations = info (parser <**> helper)
      ( fullDesc
        <> progDesc "Find solutions of eight queens puzzle." )
