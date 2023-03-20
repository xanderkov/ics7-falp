(defun square-lst (lst) (
    mapcar #'(
                lambda (elem) (
                    cond 
                        ((numberp elem) (* elem elem))
                        (T elem)
                )
            ) lst
    )
)


(print (square-lst '(11 12 13 14 a)))