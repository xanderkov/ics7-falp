(defun make-two-list (a b)
    (
        if (< a b)
            (list a b)
            (list b a)
        
    )
)


(print (make-two-list 5 6))