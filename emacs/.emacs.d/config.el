
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)

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

(defun lunaryorn-new-buffer-frame ()
  "Create a new frame with a new empty buffer."
  (interactive)
  (let ((buffer (generate-new-buffer "untitled")))
    (set-buffer-major-mode buffer)
    (display-buffer buffer '(display-buffer-pop-up-frame . nil))))

;; set specific browser to open links
(setq browse-url-browser-function 'browse-url-firefox)

(package-initialize)

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

;; Shut up compile saves
(setq compilation-ask-about-save nil)
;; Don't save *anything*
(setq compilation-save-buffers-predicate '(lambda () nil))

(require 'iso-transl)
(defalias 'yes-or-no-p 'y-or-n-p)

(require 'fill-column-indicator)
(define-globalized-minor-mode global-fci-mode fci-mode (
  lambda () (fci-mode 1)))

(add-hook 'prog-mode-hook (lambda () (fci-mode 1)))
;; (global-fci-mode 1)

(setq fci-rule-column 80)

(require 'flyspell)
(add-hook 'LaTeX-mode-hook
          '(lambda () (flyspell-mode t))
          '(lambda () (flyspell-popup-auto-correct-mode)))
(add-hook 'org-mode-hook
          '(lambda () (flyspell-mode t))
          '(lambda () (flyspell-popup-auto-correct-mode)))

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

(global-set-key (kbd "C-c n") #'lunaryorn-new-buffer-frame)
(global-set-key (kbd "M-<up>") 'move-line-up)
(global-set-key (kbd "M-<down>") 'move-line-down)
(global-set-key [f6] 'doxymacs-mode)
(global-set-key [f7] 'highlight-symbol-mode)
(global-set-key [f8] 'neotree-toggle)
(global-set-key [f9] 'ispell-change-dictionary)
(global-set-key [C-tab] 'other-window)

(setq ido-enable-flex-matching t)(setq ido-everywhere t)
(ido-mode 1)

(require 'iedit)

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

(org-babel-do-load-languages
 'org-babel-load-languages '(
(C . t)
(emacs-lisp . t)
(latex . t)
(sh . t)
(python . t)
))

(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

(setq org-todo-keywords '((sequence "☛ TODO(t)" "|" "⚑ DOING(w)" "|" "✔ DONE(d)" "|" "✘ CANCELED(c)")))

(require 'ox-twbs)

(setq org-src-fontify-natively t)

;; smiles major mode
(require 'easymenu)

(defun smiles-cml ()
  "Convert the smiles string in the buffer to CML."
  (interactive)
  (let ((smiles (buffer-string)))
    (switch-to-buffer (get-buffer-create "SMILES-CML"))
    (erase-buffer)
    (insert
     (shell-command-to-string
      (format "obabel -:\"%s\" -ocml 2> /dev/null"
              smiles)))
    (goto-char (point-min))
    (xml-mode)))

(defun smiles-names ()
  (interactive)
  (browse-url
   (format "http://cactus.nci.nih.gov/chemical/structure/%s/names"
           (buffer-string))))

(defvar smiles-mode-map
  (make-sparse-keymap)
  "Keymap for smiles-mode.")

(define-key smiles-mode-map (kbd "C-c C-c") 'smiles-cml)
(define-key smiles-mode-map (kbd "C-c C-n") 'smiles-names)

(define-key smiles-mode-map [menu-bar] (make-sparse-keymap))

(let ((menu-map (make-sparse-keymap "SMILES")))
  (define-key smiles-mode-map [menu-bar smiles] (cons "SMILES" menu-map))

  (define-key menu-map [cml]
    '("CML" . smiles-cml))
  (define-key menu-map [names]
    '("Names" . smiles-names)))

;;;###autoload
(define-derived-mode smiles-mode fundamental-mode "☺"
  "Major mode for SMILES code."
  (setq buffer-invisibility-spec '(t)))



(provide 'smiles-mode)

;;; smiles-mode.el ends here

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
(require 'sublimity-scroll)
;;(require 'sublimity-attractive)
(sublimity-mode 1)
(setq sublimity-scroll-weight 5
      sublimity-scroll-drift-length 1)

(require 'yasnippet)           
(yas-global-mode 1)

(find-file "/home/fuzie/Dropbox/TODO/todo.org")
