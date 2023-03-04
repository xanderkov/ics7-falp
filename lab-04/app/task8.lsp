(defun countries_capitals (lst name)
    (
        cond 
        (
            (equal (caar lst) name)
            (cdar lst)
        )
        (
            (equal (cdar lst) name)
            (caar lst)
        )
        (
            T
            (countries_capitals (cdr lst) name)
        )
    )
)

(print (countries_capitals 
    (list (cons 'a1 'b1) (cons 'a2 'b2) (cons 'a3 'b3) (cons 'a4 'b4)) 'b3))