(defun is-first-between (first second third)
    (
        cond ( 
                (and (> first second) (< first third))
                (and (> first third) (< first second))
            t
            )
            (t nil)
            
        
    )
)

(print (is-first-between 4 3 65))