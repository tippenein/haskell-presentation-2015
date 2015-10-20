import           Data.Char
import           Numeric

-- data Dollar = Dollar Double deriving (Eq)
-- data Dollar = Dollar Double deriving (Ord, Eq)
-- data Dollar = Dollar Double deriving (Show, Ord, Eq)

-- instance Show Dollar where
--   show (Dollar d) = "$" ++ showGFloat (Just 2) d ""
data Dollar = Dollar Double String deriving (Eq, Ord)

instance Show Dollar where
  show (Dollar d currency) =
    "$" ++ showGFloat (Just 2) d "" ++ " in " ++ map toUpper currency

main = do
  putStrLn $ "stuff"
  -- putStrLn $ show (Dollar 1.0)

