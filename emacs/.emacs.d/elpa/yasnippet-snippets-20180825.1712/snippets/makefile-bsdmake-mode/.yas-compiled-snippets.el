;;; Compiled snippets and support files for `makefile-bsdmake-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'makefile-bsdmake-mode
		     '(("$" "$(${1:VAR})$0" "var" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180825.1712/snippets/makefile-bsdmake-mode/var" nil nil)
		       ("if" "@if [ ${1:cond} ]\n    then $0\nfi\n" "if" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180825.1712/snippets/makefile-bsdmake-mode/if" nil nil)
		       ("gen" "all: ${1:targets}\n\n$0\n\nclean:\n        ${2:clean actions}\n" "gen" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180825.1712/snippets/makefile-bsdmake-mode/gen" nil nil)
		       ("echo" "@echo ${1:\"message to output\"}\n" "echo" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180825.1712/snippets/makefile-bsdmake-mode/echo" nil nil)
		       ("phony" ".PHONY: $0" "PHONY" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180825.1712/snippets/makefile-bsdmake-mode/PHONY" nil nil)))


;;; Do not edit! File generated at Mon Jan  7 13:41:02 2019
