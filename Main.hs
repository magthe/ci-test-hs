{-# LANGUAGE OverloadedStrings #-}
module Main where

import Web.Scotty
import Data.Text
import qualified Data.Map as M

main = scotty 3000 $ do
    get "/status" $ json (M.fromList [("status", "OK")] :: M.Map Text Text)
    notFound $ json (M.fromList [("error", "Bad route!")] :: M.Map Text Text)
