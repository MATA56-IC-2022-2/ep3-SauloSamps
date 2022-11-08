(defun myappend (lst tail)
    (if (null lst)
      tail
        (cons (first lst)
            (myappend (rest lst) tail)
		)
	)
)
					
					
(write(myappend '(1 2 3) '(4 5 6))) ;should return (1 2 3 4 5 6)