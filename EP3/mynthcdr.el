(defun mynthcdr (index list1)
	(defvar *original* list1)
	(defvar *break-list* '())
	

	(push (first *original*) *break-list*)
	(setf *original* (rest *original*))
	
	(loop for x from 2 to index do
		(nconc *break-list* (list (first *original*)))
		(setf *original* (rest *original*))
	)
	
	(if (< index (length list1))
		(write *original*)
	)
	
	(if (>= index (length list1))
		(write nil)
	)
	
)

(mynthcdr 2 '(a b c)) ;should return (c)