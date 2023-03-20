(defun rec-add-structed (lst &optional (acc 0))
    (cond ((null lst) acc)
          ((numberp (car lst)) (rec-add-structed (cdr lst) (+ acc (car lst))))
          ((consp (car lst)) (rec-add-structed (cdr lst) (rec-add-structed (car lst) acc)))
          (t (rec-add-structed (cdr lst) acc))
    )
)


(print (rec-add-structed '(1 2 3 4)))