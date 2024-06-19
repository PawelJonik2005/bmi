bmiTell :: (RealFloat a) => a -> a -> String
bmiTell weight height
    | weight / height ^ 2 <= 18.5 = "You're underweight."
    | weight / height ^ 2 <= 25.0 = "You're supposedly normal."
    | weight / height ^ 2 <= 30.0 = "You're fat!"
    | otherwise                 = "You're overweight."

main :: IO ()
main = do
    putStrLn (bmiTell 65 1.75)