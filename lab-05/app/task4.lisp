(defun polyp (lst) (
    cond ((eql 
        (find-if-not #'oddp

            (mapcar #'(
                lambda (elem revelem) (
                    cond 
                        ((eql elem revelem) 1)
                        (T 0)
                )
                ) lst (reverse lst)
            )
        )
        Nil) (T))
        (T Nil)
)
)


(print (polyp '(1 2 3 2 1)))