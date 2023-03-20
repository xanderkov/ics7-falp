(defun select-between (lst l r)
(
    sort (reduce #'(
                    lambda (res el) (
                        cond ((and (> el l) (< el r)) (cons el res))
                                (T res)
          
                    )
                    )
    lst :initial-value ()) #'<
)
)



(print (select-between '(1 2 3) 1 4))