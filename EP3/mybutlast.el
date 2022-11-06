(defun mybutlast (list1 index2)
	
	(defvar index (- (length list1) index2))
	(defvar *original* list1)
	(defvar *break-list* '())
	

	(push (first *original*) *break-list*)
	(setf *original* (rest *original*))
	
	(loop for x from 2 to index do
		(nconc *break-list* (list (first *original*)))
		(setf *original* (rest *original*))
	)
	
	(if (< index2 (length list1))
		(write *break-list*)
	)
	
	(if (>= index2 (length list1))
		(write nil)
	)
	
)

(mybutlast '(a b c) 2) ;should return (a)