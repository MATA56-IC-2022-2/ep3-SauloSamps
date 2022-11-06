(defun mynthcdr (list1 index)
	(defvar *original* list1)
	(defvar *break-list* '())
	

	(push (first *original*) *break-list*)
	(setf *original* (rest *original*))
	
	(loop for x from 2 to index do
		(nconc *break-list* (list (first *original*)))
		(setf *original* (rest *original*))
	)
	
	(if (< index (length list1))
		(write *break-list*)
	)
	
	(if (>= index (length list1))
		(write nil)
	)
	
)

(mynthcdr '(1 2 3 4 5 6) 3) ;should return (1 2 3)