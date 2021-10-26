{-# language TemplateHaskell #-}

module Lib where

import DiscoverInstances
import Instance
import Class (printInstances)
import Language.Haskell.TH

someFunc :: IO ()
someFunc = do
    -- printInstances $$discoverInstances
    $(do
         runIO $ printInstances $$discoverInstances
         pure undefined

      )
