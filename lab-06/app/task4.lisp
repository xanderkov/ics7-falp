(defun select-between (lst l r &optional (dump ()))
(

    sort (cond ((null lst) dump)
                (t (cond ((or (and (> (car lst) l) (< (car lst) r)) ) (select-between (cdr lst) l r (cons (car lst) dump)))
                         (t (select-between (cdr lst) l r dump))
                    )
                )
         ) #'<
)
)



(print (select-between '(1 2 3) 1 4))