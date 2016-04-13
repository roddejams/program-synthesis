f :: Int -> Int
f 0 = 1
f x = x * f(x-1)

f_where :: Int -> Int
f_where 0 = 1
f_where n0 = n0 * x0
	where x0 = f x1
		where x1 = n0 - 1
