(defun make-even (x)
    (
        if (evenp x)
        x
        (if (> x 0)
            (- x 1)
            (+ x 1)
        )
    )
)


(print (make-even 5))