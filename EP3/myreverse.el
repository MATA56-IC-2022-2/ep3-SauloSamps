(defun myreverse (list1)
	(defvar *original* list1)
	(defvar *output* '())
	
	(dolist (item *original*)
		(push (first *original*) *output*)
		(setf *original* (rest *original*))
	)
	(write *output*)
)


(myreverse '((a b) c d)) ;should return (d c (a b))