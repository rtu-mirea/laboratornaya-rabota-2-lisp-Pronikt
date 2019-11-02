(defun _print_text (file)
    (if file
        (or
            (loop for line = (read-line file nil)
                while line do (format t "~a~%" line)
            )
            (close file)
        )
        (format t "~a~%" "[!] Error while opening file")
    )
)
(defun print_text (path)
    (_print_text (open path :if-does-not-exist nil))
)

(print-lines "error")
(print-lines "text.txt")
