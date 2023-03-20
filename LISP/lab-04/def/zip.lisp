(defun myzip (lst1 lst2)
    (cond ((or (null lst1) (null lst2)) nil)
          (t (cons (list (car lst1) (car lst2)) (myzip (cdr lst1) (cdr lst2))))
    )
)


(print (myzip '(1 2 3 0) '(4 5 6 7)))
