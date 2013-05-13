
(eval-when (:compile-toplevel)
  (print :compile-toplevel))

(eval-when (:load-toplevel)
  (print :load-toplevel))

(eval-when (:execute)
  (print :execute))

(defun main ()
  (print :printed-from-exe))

(defun make-exe ()
  (save-lisp-and-die "main" :toplevel #'main :executable t))
