(defun swap-first-last (lst)
    (
        nconc 
        (last lst)
        (reverse 
            (cdr 
                (reverse 
                    (cdr lst)
                )
            )
        )
        (list (car lst))
    )
)


(print (swap-first-last '(5 6 7 8 9)))