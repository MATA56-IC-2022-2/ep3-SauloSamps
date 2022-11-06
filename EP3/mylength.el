(defun mylength (list1)
	(defvar *total* 0)
	(dolist (item list1)
		(setf *total* (+ *total*  1))
	)
	(write *total*)
)


(mylength '(1 2 3 3 2 1)) ;should return 6