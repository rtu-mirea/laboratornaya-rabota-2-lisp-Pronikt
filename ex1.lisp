(defun test_list ()
    `(3, 9, 2, 15, 5, 8, 34, 1, 99, 20)
)


;; Функция вставки элемента в список
(defun _insert (head tail at value current)
    (if (= at current)
        (append head (cons value tail))
        (_insert 
            (append head (list (car tail)))
            (cdr tail)
            at
            value 
            (+ 1 current )
        )
    )
)


;; Функция удаления элемента из списка
(defun _remove (head tail at current)
    (if (= at current)
        (append head (cdr tail))
        (_remove 
            (append head (list (car tail)))
            (cdr tail)
            at
            (+ 1 current )
        )
    )
)


;; Функция поиска элемента списка
(defun _index (value lst index)
    (if (= (car lst) value)
        index
        (_index value (cdr lst) (+ 1 index))
    )
)

(defun insert (lst at value)
    (_insert `() lst at value 0)
)

(defun remove (index lst)
    (_remove `() lst index 0)
)

(defun index (value lst)
    (_index value lst 0)
)

(insert (test_list) 2 3131)
(index 5 (test_list))
(remove 3 (test_list))
