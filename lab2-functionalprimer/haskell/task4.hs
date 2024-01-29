ask :: String -> IO ()
ask prompt =
  do
    putStrLn prompt
    line <- getLine
    if sgn line
      then putStrLn "quitting..."
      else if line == ""
             then ask prompt
             else do
               putStrLn ("you said: " ++ reverse line)
               ask prompt

-- Check if the input is "quit"
sgn :: String -> Bool
sgn line = line == "quit"

main :: IO ()
main =
  do
    let prompt = "please say something or type quit to exit"
    ask prompt


  --sgn line = if line== "" then ask prompt else if line == "quit" then putStrLn "quitting..." else putStrLn "you said: " ++ reverse line