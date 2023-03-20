(defun get-first-elem (lst)
    (
        cond (  
              (null (car lst)) (get-first-elem (cdr lst))
              (t (car lst)))
    )
)


(print (get-first-elem '(1 2 3 4)))