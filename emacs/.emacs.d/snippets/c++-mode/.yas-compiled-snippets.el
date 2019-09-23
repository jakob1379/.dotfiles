;;; Compiled snippets and support files for `c++-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'c++-mode
		     '(("dox"
			(progn
			  (unless
			      (and
			       (fboundp 'semantic-current-tag)
			       semantic-mode)
			    (error "Semantic required to use dox snippet"))
			  (let
			      ((tag
				(senator-next-tag)))
			    (while
				(or
				 (null tag)
				 (not
				  (semantic-tag-of-class-p tag 'function)))
			      (setq tag
				    (senator-next-tag)))
			    (let*
				((name
				  (semantic-tag-name tag))
				 (attrs
				  (semantic-tag-attributes tag))
				 (args
				  (plist-get attrs :arguments))
				 (return-name
				  (plist-get attrs :type))
				 (idx 1))
			      (if
				  (listp return-name)
				  (setq return-name
					(car return-name)))
			      (yas/expand-snippet
			       (format "/**\n* @brief ${1:%s}\n*\n%s\n%s*/\n" name
				       (mapconcat
					(lambda
					  (x)
					  (format "* @param %s ${%d:Description of %s}"
						  (car x)
						  (incf idx)
						  (car x)))
					args "\n")
				       (if
					   (and return-name
						(not
						 (string-equal "void" return-name)))
					   (format " * @return ${%d:%s}\n"
						   (incf idx)
						   return-name)
					 ""))))))
			"dox" nil nil nil "/home/fuzie/.emacs.d/snippets/c++-mode/dox" nil nil)
		       ("dox2"
			(progn
			  (let*
			      ((next-func-alist
				(doxymacs-find-next-func))
			       (func-name
				(cdr
				 (assoc 'func next-func-alist)))
			       (params-list
				(cdr
				 (assoc 'args next-func-alist)))
			       (return-name
				(cdr
				 (assoc 'return next-func-alist)))
			       (snippet-text "")
			       (idx 1))
			    (setq snippet-text
				  (format "/**\n * ${1:%s}\n * \n" func-name))
			    (setq idx 2)
			    (dolist
				(param params-list)
			      (unless
				  (string= param "this")
				(setq snippet-text
				      (concat snippet-text
					      (format " * \\param %s ${%d:}\n" param idx)))
				(setq idx
				      (+ 1 idx))))
			    (when
				(and return-name
				     (not
				      (string= return-name "void")))
			      (setq snippet-text
				    (concat snippet-text
					    (format " * \\return ${%d:%s}\n" idx return-name))))
			    (setq snippet-text
				  (concat snippet-text " */"))
			    (yas/expand-snippet snippet-text)))
			"cc-doxygen" nil nil nil "/home/fuzie/.emacs.d/snippets/c++-mode/cc-doxygen" nil nil)))


;;; Do not edit! File generated at Mon Sep 23 11:25:45 2019
