{-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE DeriveGeneric  #-}

import Data.Aeson
import Data.Char
import GHC.Generics
import Numeric


data Dollar = Dollar { amount :: Double, currency :: Currency }
  deriving (Eq, Generic, ToJSON, FromJSON)

data Currency = USD | EUR | GBP
  deriving (Show, Eq, Generic, ToJSON, FromJSON)

instance Show Dollar where
  show (Dollar d currency) =
    "$" ++ showGFloat (Just 2) d "" ++ " in " ++ show currency

-- to be able to add Dollar's we'd need
-- to define a type instance for Num
-- instance Num Dollar b => Num (a -> b) where
--   (+) = _

main = print(encode(Dollar 2.35 USD))
-- "{"amount": "2.35", "currency": "USD"}"
