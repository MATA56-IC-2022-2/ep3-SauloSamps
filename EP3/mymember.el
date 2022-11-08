(defun mymember (input list1)
	(defvar index 0)
	
	(loop for x from 0 to (- (length list1) 1) do
		(if (string-equal (nth x list1) input) 
			(setf index x))
	)
	
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


(mymember 'mae '(minha mae e eu)) ;should return (mae e eu)