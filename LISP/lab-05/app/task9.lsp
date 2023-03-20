(defun list-of-list (lst)
    (apply #'+ (
                mapcar #'(
                    lambda (elem) (
                        cond ((listp elem) (list-of-list elem))
                              (t 1)
                    )
                )
                lst
            )
    )
)

(print (list-of-list  '(1 2 (3))))