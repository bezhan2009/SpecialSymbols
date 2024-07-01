(defun calculate-simple-interest (principal rate time)
  (/ (* principal rate time) 100))

(let ((principal 1000)
      (rate 5)
      (time 3))
  (format t "The simple interest is: ~a~%" (calculate-simple-interest principal rate time)))
