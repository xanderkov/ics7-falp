(defun mult_el_a (n lst)
    (
        cond 
        (
            (null lst) nil)
            ((numberp (car lst)) (cons (* (car lst) n) (mult_el_a (cdr lst) n)))
            ((listp (car lst)) (cons (mult_el_a (car lst) n) (mult_el_a (cdr lst) n)))
            (t (cons (car lst) (mult_el_a (cdr lst) )))
    )


)   



(print (mult_el_a 5 '(1 2 3 6 a)))