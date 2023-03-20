(defun minus-ten-list (lst) (
    mapcar #'(
                lambda (elem) (
                    cond 
                        ((numberp elem) (- elem 10))
                        (T elem)
                )
            ) lst
    )
)

(print (minus-ten-list '(11 12 13 14 a)))