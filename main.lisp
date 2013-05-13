
; On emacs, C-c C-k
; prints
;   :COMPILE-TOPLEVEL
;   :LOAD-TOPLEVEL

; On sbcl, (load "main.lisp")
; prints
;   :EXECUTE

; On sbcl, (compile-file "main.lisp")
; prints
;   :COMPILE-TOPLEVEL


; On sbcl, (load (compile-file "main.lisp"))
; prints
;   :COMPILE-TOPLEVEL
;   :LOAD-TOPLEVEL

; On sbcl, (load "main.fasl")
; prints
;   :LOAD-TOPLEVEL

; After (make-exe), calling executable
; prints
;   None :D

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
