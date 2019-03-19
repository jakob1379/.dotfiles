(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t)

(setq c-default-style "bsd"
      c-basic-offset 4)

(require 'company)
(require 'company-anaconda)
(require 'company-auctex)
(require 'company-bibtex)
(require 'company-math)
(add-hook 'after-init-hook 'global-company-mode)
(eval-after-load "company"
  '(add-to-list 'company-backends 'company-anaconda))
(add-hook 'python-mode-hook 'anaconda-mode)
(require 'company-auctex)
(company-auctex-init)
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
 '(custom-enabled-themes (quote (misterioso)))
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

;; Shut up compile saves
(setq compilation-ask-about-save nil)
;; Don't save *anything*
(setq compilation-save-buffers-predicate '(lambda () nil))

(require 'iso-transl)
(defalias 'yes-or-no-p 'y-or-n-p)

(require 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)

(require 'fill-column-indicator)
(define-globalized-minor-mode global-fci-mode fci-mode (
  lambda () (fci-mode 1)))

;; (add-hook 'prog-mode-hook (lambda () (fci-mode 1)))
;; (global-fci-mode 1)

(setq fci-rule-column 80)

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

; deletes all the whitespace when you hit backspace or delete
(require 'hungry-delete)
(global-hungry-delete-mode)

(global-set-key (kbd "C-;") 'iedit-mode)
(global-set-key (kbd "C-c n") #'lunaryorn-new-buffer-frame)
(global-set-key (kbd "M-9") 'kill-whole-line)
(global-set-key (kbd "M-<down>") 'move-line-down)
(global-set-key (kbd "M-<up>") 'move-line-up)
(global-set-key [C-tab] 'other-window)
(global-set-key [f6] 'doxymacs-mode)
(global-set-key [f7] 'highlight-symbol-mode)
(global-set-key [f8] 'neotree-toggle)
(global-set-key [f9] 'ispell-change-dictionary)

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
"Align columns by whitespace"
(interactive "r")
(align-regexp start end
             "\\(\\s-*\\)\\s-" 1 0 t))

(defun align-& (start end)
"Align columns by ampersand"
(interactive "r")
(align-regexp start end
             "\\(\\s-*\\)&" 1 1 t))

(electric-pair-mode)
(add-hook 'LaTeX-mode-hook
          '(lambda () (define-key LaTeX-mode-map (kbd "$") 'self-insert-command)))

;; RefTex - Locale tree-structure
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(setq reftex-plug-into-AUCTeX t)

(require 'neotree)
(require 'all-the-icons)

 ;; every time when the neotree window is  opened, it will try to find current
 ;; file and jump to node.
 (setq-default neo-smart-open t)

 ;; change root automatically when running `projectile-switch-project`
 (setq projectile-switch-project-action 'neotree-projectile-action)


 (setq neo-theme (if window-system 'icons 'nerd)) ; 'classic, 'nerd, 'ascii, 'arrow

 (setq neo-vc-integration '(face char))

 (setq neo-show-hidden-files t)

 (setq neo-toggle-window-keep-p t)

 (setq neo-force-change-root t)

 (add-hook 'neotree-mode-hook
           (lambda ()
             (setq-local mode-line-format nil)
             (setq-local display-line-numbers nil)
             (local-set-key (kbd "C-s") 'isearch-forward)
             (local-set-key (kbd "C-M-s") 'isearch-forward-regexp)
             (local-set-key (kbd "C-r") 'isearch-backward)
             (local-set-key (kbd "C-M-r") 'isearch-backward-regexp)))

 (add-to-list 'all-the-icons-icon-alist
              '("^build\.boot$" all-the-icons-alltheicon "clojure-line" :height 1.0 :face all-the-icons-blue :v-adjust 0.0))

 ;; face customizations

 (set-face-attribute 'neo-vc-edited-face nil
                     :foreground "#E2C08D")

 (set-face-attribute 'neo-vc-added-face nil
                     :foreground "green4")

 (eval-after-load "neotree"
    '(add-to-list 'window-size-change-functions
                  (lambda (frame)
                    (let ((neo-window (neo-global--get-window)))
                      (unless (null neo-window)
                        (setq neo-window-width (window-width neo-window)))))))
 (provide 'setup-neotree)

(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

(setq org-todo-keywords '((sequence "☛ TODO(t)" "|" "⚑ DOING(w)" "|" "✔ DONE(d)" "|" "✘ CANCELED(c)")))

(require 'ox-twbs)

(setq org-src-fontify-natively t)

(if (require 'toc-org nil t)
    (add-hook 'org-mode-hook 'toc-org-mode)
  (warn "toc-org not found"))'

(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)                 ; optional

;;Python docstrings
(add-hook 'python-mode-hook
	  (lambda ()(require 'sphinx-doc)(sphinx-doc-mode t)))

(setenv "WORKON_HOME" "/home/fuzie/anaconda3/envs")
(pyvenv-mode 1)
(setq python-shell-interpreter "python3")

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

(global-set-key (kbd "M-<up>") 'move-region-up)
(global-set-key (kbd "M-<down>") 'move-region-down)

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
