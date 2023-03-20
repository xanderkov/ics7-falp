(defun x-from-y-to-z (x y z)
  (cond ((> x y) (cond ((< x z) T) (T Nil))) (T Nil))
  
)
(print (x-from-y-to-z 4 3 65))
