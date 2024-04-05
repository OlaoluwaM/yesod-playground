-- import Application (appMain)
import HelloWorld
import Yesod

main :: IO ()
main = warp 3000 HelloWorld
