(defun countries_capitals (lst name)
    (
        cond 
        (
            (assoc name lst)
            (cdr (assoc name lst))
        )
        (
            (rassoc name lst)
            (car (rassoc name lst))
        )
        (T Nil)
    )
)

(print (countries_capitals 
    (list (cons 'a1 'b1) (cons 'a2 'b2) (cons 'a3 'b3) (cons 'a4 'b4)) 'a3))