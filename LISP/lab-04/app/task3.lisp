(defun get-last (lst)
    (
        car (last lst)
    )
)


(print (get-last '(5 6)))


(defun get-last-reverse (lst)
    (
        car (reverse lst)
    )
)


(print (get-last-reverse '(5 6)))