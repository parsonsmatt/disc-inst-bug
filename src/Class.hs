module Class where

import Data.Typeable
import Data.Proxy
import DiscoverInstances (forInstances, SomeDict)

class (Typeable a) => C a where
    c :: Proxy a -> Int

printInstances :: [SomeDict C] -> IO ()
printInstances dicts = do
    forInstances dicts $ \prxy ->
        print $ typeOf prxy
    pure ()
