(defun mult_el_a (n lst)
    (
        cond 
        (
            (and
                (and
                    (numberp (car lst))
                    (and (numberp (cadr lst)) (numberp (caddr lst)))
                )
                (numberp n)
            )
            (* (car lst) n)
        )
        (T Nil)
    )
)

(defun mult_el_b (n lst)
    (cond 
        (
            (and (numberp (car lst)) (numberp n))
            (* (car lst) n)
        )
        (T Nil)
    )
)

(print (mult_el_a 5 '(1 2 3)))