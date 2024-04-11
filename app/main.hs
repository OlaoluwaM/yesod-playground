{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE QuasiQuotes #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE TypeFamilies #-}

-- import Application (appMain)
-- import HelloWorld
import Yesod

data App = App

mkYesod "App" [parseRoutes| / HomeR GET |]

instance Yesod App

getHomeR = return $ object ["msg" .= ("Hello World!" :: String)]

main :: IO ()
main = warp 3000 App
