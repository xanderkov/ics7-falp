(defun multiply-lst-numbers (lst x) (
    mapcar #'(
                lambda (elem) (
                    * elem x
                )
            ) lst
    )
)


(defun multiply-lst (lst x) (
    mapcar #'(
                lambda (elem) (
                    cond 
                        ((numberp elem) (* elem x))
                        (T elem)
                )
            ) lst
    )
)


(print (multiply-lst-numbers '(11 12 13 14) 2))