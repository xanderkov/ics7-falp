(defun combinations(lst1 lst2)
    (mapcan #'(lambda (inner)
                (mapcar #'(lambda (outer)
                            (list outer inner)
                        ) 
                        lst1)) 
            lst2))

(print (combinations '(1 2) '(3 4)))