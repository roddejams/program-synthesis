import System.Environment
main = do
	arg:args <- getArgs
	putStrLn (show (f (read arg)))

f 0 n1 = 0 + n1
f n0 n1 = f  x0 x1
	where x0 = n0 - 1
		where x1 = n0 * n1
