module Main where

import           Control.Applicative
import           Control.Concurrent
import           Control.Lens
import           Control.Monad          (forM_, forever, liftM, mzero, void,
                                         when)
import           Data.Aeson             as A
import           Data.Aeson.Lens
import           Data.Aeson.TH
import           Data.Aeson.TH          (Options (..), defaultOptions,
                                         deriveJSON)
import           Data.Char
import           Data.Function          (on)
import           Data.IORef
import           Data.List              as L (intersperse, sortBy, (\\))
import           Data.Map               as M
import           Data.Monoid
import           Data.Set               as S
import           Data.String.Utils
import qualified Data.Text              as T
import           Data.Text.Lens
import           Data.Time
import           System.Console.GetOpt
import           System.Directory
import           System.Directory.Extra (listFilesRecursive, removeFile)
import           System.Environment

--------------------------------------------------------------------------------

locations = ["."]

--importDirectory :: Filepath -> IO [T.Text]

main :: IO ()
main = do
  putStrLn "stakkeo-"

  Gtk.init Nothing
  Gtk.main
