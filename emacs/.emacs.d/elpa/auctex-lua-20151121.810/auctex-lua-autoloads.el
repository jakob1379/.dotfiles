;;; auctex-lua-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "auctex-lua" "auctex-lua.el" (23148 62124 153377
;;;;;;  695000))
;;; Generated autoloads from auctex-lua.el

(defvar LaTeX-Lua-environments '("luacode" "luacode*") "\
List of environments that will contain Lua code.")

(custom-autoload 'LaTeX-Lua-environments "auctex-lua" t)

(autoload 'LaTeX-edit-Lua-code-start "auctex-lua" "\
Place Lua code in a separate buffer in `lua-mode'.

\(fn)" t nil)

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; auctex-lua-autoloads.el ends here
