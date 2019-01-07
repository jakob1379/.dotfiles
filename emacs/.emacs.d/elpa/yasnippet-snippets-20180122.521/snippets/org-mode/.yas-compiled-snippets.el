;;; Compiled snippets and support files for `org-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'org-mode
		     '(("verse_" "#+begin_verse\n        $0\n#+end_verse" "verse" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180122.521/snippets/org-mode/verse" nil nil)
		       ("uml" "#+BEGIN_UML\n$1\n#+END_UML\n" "uml" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180122.521/snippets/org-mode/uml" nil nil)
		       ("matrix_" "\\left \\(\n\\begin{array}{${1:ccc}}\n${2:v1 & v2} \\\\\n$0\n\\end{array}\n\\right \\)" "matrix" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180122.521/snippets/org-mode/matrix" nil nil)
		       ("latex_" "#+BEGIN_LaTeX\n$0\n#+END_LaTeX" "latex" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180122.521/snippets/org-mode/latex" nil nil)
		       ("img_" "<img src=\"$1\"\n alt=\"$2\" align=\"${3:left}\"\n title=\"${4:image title}\"\n class=\"img\"\n</img>\n$0" "img" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180122.521/snippets/org-mode/img" nil nil)
		       ("fig_" "#+CAPTION: ${1:caption}\n#+ATTR_LaTeX: ${2:scale=0.75}\n#+LABEL: fig:${3:label}\n" "figure" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180122.521/snippets/org-mode/figure" nil nil)
		       ("entry_" "#+begin_html\n---\nlayout: ${1:default}\ntitle: ${2:title}\n---\n#+end_html\n$0" "entry" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180122.521/snippets/org-mode/entry" nil nil)
		       ("emb_" "src_${1:lang}${2:[${3:where}]}{${4:code}}" "embedded" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180122.521/snippets/org-mode/embedded" nil nil)
		       ("elisp_" "#+begin_src emacs-lisp :tangle yes\n$0\n#+end_src" "elisp" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180122.521/snippets/org-mode/elisp" nil nil)
		       ("dot_" "#+begin_src dot :file ${1:file} :cmdline -T${2:pdf} :exports none :results silent\n            $0\n#+end_src\n\n[[file:$1]]" "dot" nil nil nil "/home/fuzie/.emacs.d/elpa/yasnippet-snippets-20180122.521/snippets/org-mode/dot" nil nil)))


;;; Do not edit! File generated at Fri Jun 22 14:08:16 2018
