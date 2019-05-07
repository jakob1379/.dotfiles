(run-with-idle-timer
 5 nil
 (lambda ()
   (setq gc-cons-threshold 1000000)
   (message "gc-cons-threshold restored to %S"
	    gc-cons-threshold)))

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t)

(setq c-default-style "bsd"
      c-basic-offset 4)

(require 'company)
(add-hook 'after-init-hook 'global-company-mode)
(eval-after-load "company"
  '(add-to-list 'company-backends 'company-anaconda))
(add-hook 'python-mode-hook 'anaconda-mode)
(setq company-dabbrev-downcase 0)
(setq company-idle-delay 0)

;; set specific browser to open links
(setq browse-url-browser-function 'browse-url-firefox)

(package-initialize)
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(cua-enable-cua-keys t)
 '(cua-mode t nil (cua-base))
 '(delete-selection-mode t)
 '(global-linum-mode t)
 '(inhibit-startup-screen t)
 '(package-selected-packages
   (quote
    (sphinx-doc yasnippet-snippets company-shell pdf-tools company-jedi pretty-symbols sublimity latex-preview-pane paredit company company-anaconda company-auctex company-bibtex company-c-headers company-irony company-math neotree irony auctex-lua auctex-latexmk)))
 '(show-paren-mode t)
 '(global-visual-line-mode t)
 '(show-paren-style (quote mixed))
 '(tool-bar-style (quote image)))

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 113 :width normal :foundry "unknown")))))
(require 'iso-transl)
(global-hl-line-mode t)
(server-start)

;; Shut up compile saves
(setq compilation-ask-about-save nil)
;; Don't save *anything*
(setq compilation-save-buffers-predicate '(lambda () nil))

(require 'iso-transl)
(defalias 'yes-or-no-p 'y-or-n-p)

(require 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)

;; (require 'fill-column-indicator)
;; (setq fci-rule-column 80)

;; (define-globalized-minor-mode global-fci-mode fci-mode 
;;   (lambda () (fci-mode 1)))

;; (add-hook 'prog-mode-hook (lambda () (fci-mode 1)))

;; (setq-default fci-rule-column 80)
;; (setq fci-handle-truncate-lines nil)
;; (define-globalized-minor-mode global-fci-mode fci-mode (lambda () (fci-mode 1)))
;; (global-fci-mode 1)
;; (defun auto-fci-mode (&optional unused)
;;   (if (> (window-width) fci-rule-column)
;;       (fci-mode 1)
;;     (fci-mode 0))
;;   )
;; (add-hook 'after-change-major-mode-hook 'auto-fci-mode)
;; (add-hook 'window-configuration-change-hook 'auto-fci-mode)

(require 'flyspell)
(add-hook 'LaTeX-mode-hook
	  '(lambda () (flyspell-mode t))
	  '(lambda () (flyspell-popup-auto-correct-mode)))
(add-hook 'org-mode-hook
	  '(lambda () (flyspell-mode t))
	  '(lambda () (flyspell-popup-auto-correct-mode)))
(eval-after-load "flyspell"
  '(progn (define-key flyspell-mode-map (kbd "C-;") nil)))

(require 'guess-language)
;; Optionally:
(setq guess-language-languages '(en dk))
(setq guess-language-min-paragraph-length 35)

;; Highlight same symbols
(require 'highlight-symbol)
(setq highlight-symbol-mode t)

(define-globalized-minor-mode global-highlight-symbol-mode 
  highlight-symbol-mode (
			 lambda () (highlight-symbol-mode 1)))
(global-highlight-symbol-mode 1)

(global-set-key (kbd "C-;") 'iedit-mode)
(global-set-key (kbd "C-c b b") 'bjm-comment-box)
(global-set-key (kbd "M-9") 'kill-whole-line)
;; (global-set-key (kbd "M-<down>") 'move-line-down)
;; (global-set-key (kbd "M-<up>") 'move-line-up)
(global-set-key (kbd "M-<up>") 'move-region-up)
(global-set-key (kbd "M-<down>") 'move-region-down)
(global-set-key (kbd "M-l") 'my-mark-current-line)
(global-set-key [C-tab] 'other-window)
(global-set-key [f7] 'highlight-symbol-mode)
(global-set-key [f8] 'ranger)
(global-set-key [f9] 'ispell-change-dictionary) ;

(setq ido-enable-flex-matching t)(setq ido-everywhere t)
(ido-mode 1)

(require 'iedit)

(defun iedit-dwim (arg)
  "Starts iedit but uses \\[narrow-to-defun] to limit its scope."
  (interactive "P")
  (if arg
      (iedit-mode)
    (save-excursion
      (save-restriction
	(widen)
	;; this function determines the scope of `iedit-start'.
	(if iedit-mode
	    (iedit-done)
	  ;; `current-word' can of course be replaced by other
	  ;; functions.
	  (narrow-to-defun)
	  (iedit-start (current-word) (point-min) (point-max)))))))

(setq TeX-source-correlate-start-server t)
(setq TeX-PDF-mode t)
(setq TeX-source-correlate-mode t)
(setq TeX-source-correlate-method 'synctex)
(save-place-mode 1)
(set-default 'truncate-lines t)
(setq-default TeX-parse-self t) ;; Enable parsing of the file itself on load
(setq-default TeX-auto-save t) ;; Enable save on command executation (e.g., LaTeX)
(setq-default TeX-save-query nil) ;; Don't even ask about it
(setq TeX-electric-sub-and-superscript t)
(add-hook 'LaTeX-mode-hook
	  (lambda ()
	    (define-key LaTeX-mode-map (kbd "$") 'self-insert-command)))
(setq TeX-insert-braces t)

(defun align-whitespace (start end)
  ;; Align columns by whitespace
  (interactive "r")
  (align-regexp start end
		"\\(\\s-*\\)\\s-" 1 0 t))

(defun align-& (start end)
  ;; Align columns by ampersand
  (interactive "r")
  (align-regexp start end
		"\\(\\s-*\\)&" 1 1 t))

(electric-pair-mode)
(add-hook 'LaTeX-mode-hook
	  '(lambda () (define-key LaTeX-mode-map (kbd "$") 
			'self-insert-command)))

;; RefTex - Locale tree-structure
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(setq reftex-plug-into-AUCTeX t)

(org-babel-do-load-languages		;
 'org-babel-load-languages
 (mapcar (lambda (lang) (cons lang t))
	 `(python
	   ,(if (locate-library "ob-shell") 'shell 'sh)
	   sqlite
	   )))

(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

(setq org-todo-keywords '((sequence "☛ TODO(t)" "|" "⚑ DOING(w)" "|" "✔ DONE(d)" "|" "✘ CANCELED(c)")))

(require 'ox-twbs)

(setq org-src-fontify-natively t)

(setq org-src-tab-acts-natively t)

(if (require 'toc-org nil t)
    (add-hook 'org-mode-hook 'toc-org-mode)
  (warn "toc-org not found"))'

(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)

;;Python docstrings
(add-hook 'python-mode-hook
	  (lambda ()(require 'sphinx-doc)(sphinx-doc-mode t)))

(setenv "WORKON_HOME" "/home/fuzie/anaconda3/envs")
(pyvenv-mode 1)
(setq python-shell-interpreter "python3")

;; (source: http://emacs.stackexchange.com/a/22166/93)
(defun my-mark-current-line ()
  (interactive)
  (beginning-of-line)
  (setq this-command-keys-shift-translated t)
  (call-interactively 'end-of-line)
  (call-interactively 'forward-char))

;; Move line up and down
(defun move-line (n)
  "Move the current line up or down by N lines."
  (interactive "p")
  (setq col (current-column))
  (beginning-of-line) (setq start (point))
  (end-of-line) (forward-char) (setq end (point))
  (let ((line-text (delete-and-extract-region start end)))
    (forward-line n)
    (insert line-text)
    ;; restore point to original column in moved line
    (forward-line -1)
    (forward-char col)))

(defun move-line-up (n)
  "Move the current line up by N lines."
  (interactive "p")
  (move-line (if (null n) -1 (- n))))

(defun move-line-down (n)
  "Move the current line down by N lines."
  (interactive "p")
  (move-line (if (null n) 1 n)))

(defun move-region (start end n)
  "Move the current region up or down by N lines."
  (interactive "r\np")
  (let ((line-text (delete-and-extract-region start end)))
    (forward-line n)
    (let ((start (point)))
      (insert line-text)
      (setq deactivate-mark nil)
      (set-mark start))))

(defun move-region-up (start end n)
  "Move the current line up by N lines."
  (interactive "r\np")
  (move-region start end (if (null n) -1 (- n))))

(defun move-region-down (start end n)
  "Move the current line down by N lines."
  (interactive "r\np")
  (move-region start end (if (null n) 1 n)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Full width comment box                                                 ;;
;; from http://irreal.org/blog/?p=374                                     ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun bjm-comment-box (b e)
;; "Draw a box comment around the region but arrange for the region to extend 
;; to at least the fill column. Place the point after the comment box."

  (interactive "r")

  (let ((e (copy-marker e t)))
    (goto-char b)
    (end-of-line)
    (insert-char ?  (- fill-column (current-column)))
    (comment-box b e 1)
    (goto-char e)
    (set-marker e nil)))

;; Smooth scrolling and map
(require 'sublimity)
;;(require 'sublimity-scroll)
(require 'sublimity-attractive)
;;(sublimity-mode 1)
(setq sublimity-scroll-weight 10
      sublimity-scroll-drift-length 0)

(require 'yasnippet)           
(yas-global-mode 1)

(find-file "/home/fuzie/Dropbox/TODO/todo.org")
