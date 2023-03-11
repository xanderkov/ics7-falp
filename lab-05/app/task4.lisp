(defun get-last (lst)
    (
        nbutlast lst 1
    )
)


(print (get-last '(5 6 7 8 9)))


(defun get-without-last-reverse (lst)
    (
        reverse (cdr (reverse lst))
    )
)


(print (get-without-last-reverse'(5 6 7 8 9)))

mapevery