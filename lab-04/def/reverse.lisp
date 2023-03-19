(defun reverse1(lst &optional (acc ()))
    (cond ((null lst) acc)
          ((consp lst) (reverse1 (cdr lst) (cons (car lst) acc)))))


(defun reverse2 (lst)
  (if (atom lst)
      lst
      (nconc (reverse2 (cdr lst))
              (list (reverse2 (car lst))))))


(defun reverse3 (lst)
  (reduce #'cons lst :from-end t  :initial-value ()))



(print (reverse3 '(1 2 3 4 5 6)))