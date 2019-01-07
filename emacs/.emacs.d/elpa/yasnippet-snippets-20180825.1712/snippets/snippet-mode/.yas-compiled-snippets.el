;;; Compiled snippets and support files for `snippet-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'snippet-mode
		     '(("vars" "# name : $1${2:\n# key : ${3:trigger-key}}${4:\n# keybinding : ${5:keybinding}}${6:\n# expand-env : (${7:})}\n# contributor : $6\n# key: vars\n# --\n$0" "Snippet header" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180825.1712/snippets/snippet-mode/vars" nil nil)
		       ("mirror" "\\${${2:n}:${4:\\$(${5:reflection-fn})}\\}$0" "${n:$(...)} mirror" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180825.1712/snippets/snippet-mode/mirror" nil nil)
		       ("group" "# group : ${1:group}" "group" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180825.1712/snippets/snippet-mode/group" nil nil)
		       ("field" "\\${${1:${2:n}:}$3${4:\\$(${5:lisp-fn})}\\}$0" "${ ...  } field" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180825.1712/snippets/snippet-mode/field" nil nil)
		       ("`" "\\`$0\\`" "elisp" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180825.1712/snippets/snippet-mode/elisp" nil nil)
		       ("cont" "# contributor: `user-full-name`" "cont" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180825.1712/snippets/snippet-mode/cont" nil nil)))


;;; Do not edit! File generated at Mon Jan  7 13:41:03 2019
