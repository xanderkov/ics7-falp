(defun get-without-last-reverse (lst)
    (
        reverse (cdr (reverse lst))
    )
)



(defun st_check (lst)
    (cond
        (
            (> (length lst) 1)
            (and
                (eq (car lst) (car (reverse lst)))
                (st_check (cdr (get-without-last-reverse lst)))
            )
        )
        (T T)
    )
)


(defun palindrom_check (lst)
    (st_check lst)
)

(print (palindrom_check '(1 2 3 4 5 3 2 1)))