
Some ventures on `eval-when`.

On emacs, `C-c` `C-k`
prints
   :COMPILE-TOPLEVEL
   :LOAD-TOPLEVEL

On sbcl, `(load "main.lisp")`
prints
   :EXECUTE

On sbcl, `(compile-file "main.lisp")`
prints
   :COMPILE-TOPLEVEL


On sbcl, `(load (compile-file "main.lisp"))`
prints
   :COMPILE-TOPLEVEL
   :LOAD-TOPLEVEL

On sbcl, `(load "main.fasl")`
prints
   :LOAD-TOPLEVEL

After `(make-exe)`, calling executable
prints
   None :D
