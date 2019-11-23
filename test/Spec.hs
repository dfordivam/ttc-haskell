module Main (main) where

-- https://hackage.haskell.org/package/tasty
import Test.Tasty (defaultMain, testGroup)

-- (ttc:test)
import qualified Data.TTC.Test
import qualified Data.TTC.Instances.Test

------------------------------------------------------------------------------

main :: IO ()
main = defaultMain $ testGroup "test"
    [ Data.TTC.Test.tests
    , Data.TTC.Instances.Test.tests
    ]
