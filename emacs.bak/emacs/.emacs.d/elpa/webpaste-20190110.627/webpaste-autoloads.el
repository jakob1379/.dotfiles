;;; webpaste-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "webpaste" "webpaste.el" (23668 22477 416809
;;;;;;  310000))
;;; Generated autoloads from webpaste.el

(let ((loads (get 'webpaste 'custom-loads))) (if (member '"webpaste" loads) nil (put 'webpaste 'custom-loads (cons '"webpaste" loads))))

(autoload 'webpaste-paste-region "webpaste" "\
Paste selected region to some paste service.
Argument POINT Current point.
Argument MARK Current mark.

\(fn POINT MARK)" t nil)

(autoload 'webpaste-paste-buffer "webpaste" "\
Paste current buffer to some paste service.

\(fn)" t nil)

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; webpaste-autoloads.el ends here
