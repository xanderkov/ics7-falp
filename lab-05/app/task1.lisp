(defun minus-ten (x)
    (
        if (evenp x)
        x
        (if (> x 0)
            (- x 1)
            (+ x 1)
        )
    )
)


(print (minus-ten 5))