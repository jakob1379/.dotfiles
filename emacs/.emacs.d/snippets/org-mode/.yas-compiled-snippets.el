;;; Compiled snippets and support files for `org-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'org-mode
		     '(("obabel" "#+BEGIN_SRC sh :file ${1:location}\nobabel -:\"$0${2:structure}\" -O $1\n#+END_SRC" "obabel" nil nil
			((yas-indent-line 'fixed)
			 (yas-wrap-around-region nil))
			"/home/fuzie/.emacs.d/snippets/org-mode/obabel" nil nil)
		       ("link" "[[${1:URL}][${2:Text}]]$0" "link" nil nil nil "/home/fuzie/.emacs.d/snippets/org-mode/link" nil nil)
		       ("emacs" "#+BEGIN_SRC emacs-lisp\n$0\n#+END_SRC" "emacs-lisp" nil nil nil "/home/fuzie/.emacs.d/snippets/org-mode/emacs-lisp" nil nil)))


;;; Do not edit! File generated at Thu May 23 10:14:17 2019
