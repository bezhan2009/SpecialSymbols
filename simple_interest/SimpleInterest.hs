calculateSimpleInterest :: Float -> Float -> Float -> Float
calculateSimpleInterest principal rate time = (principal * rate * time) / 100

main :: IO ()
main = do
    let principal = 1000
    let rate = 5
    let time = 3
    let interest = calculateSimpleInterest principal rate time
    putStrLn $ "The simple interest is: " ++ show interest
