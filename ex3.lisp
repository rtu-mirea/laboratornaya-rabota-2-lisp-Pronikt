;;Функция сжатия списка
(defun _compress (w &optional (n 1) ac)
  (cond ((null w) (reverse ac))
        ((equal (car w) (cadr w)) (_compress (cdr w) (1+ n) ac))
        ((> n 1) (_compress (cdr w) 1 (cons (list (car w) n) ac)))
        ((_compress (cdr w) 1 (cons (car w) ac)))
  )
)


(defun compress
    (w &aux (v (_compress w)))
  (values v (float (/ (length w) (length v))))
)

(compress `(1 1 1 1 0 1 0 0 0 0 0 0 1 1))
