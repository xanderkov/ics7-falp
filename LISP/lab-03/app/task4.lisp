(defun is-first-between (first second third)
    (
        if (or 
            (and (> first second) (< first third))
            (and (> first third) (< first second))
           )
            t
            nil
        
    )
)


(print (is-first-between 5 4 6))