(defun set-equalp (set1 set2)
(
    and (eql (length set1) (length set2))
                (every #'(lambda (elem) 
                            (member elem set2 :test #'equal)
                         ) set1)
                (every #'(lambda (elem) 
                            (member elem set1 :test #'equal)
                         ) set2)
)
)



(print (set-equalp '(1 2 3) '(1 2 3)))