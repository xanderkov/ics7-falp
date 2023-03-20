(defun my-reverse (lst &optional (revlst ()))
    (
        cond ((null lst) revlst)
             (T (my-reverse (cdr lst) (cons (car lst) revlst)))
    )
)


(print (my-reverse '(1 2 3)))