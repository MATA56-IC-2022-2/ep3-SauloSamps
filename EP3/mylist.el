(defun MYLIST (&rest values)
	(cons (first values) (rest values))
)


(write(MYLIST 1 2 3 4 5 6))