;;; Commentary:
;;" init.el: settings from customise-*

;;; Code:
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(org-babel-load-file "~/.emacs.d/config.org")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cua-mode t nil (cua-base))
 '(custom-safe-themes
   '("669e02142a56f63861288cc585bee81643ded48a19e36bfdf02b66d745bcc626" "0e8bac1e87493f6954faf5a62e1356ec9365bd5c33398af3e83cfdf662ad955f" "bf5bdab33a008333648512df0d2b9d9710bdfba12f6a768c7d2c438e1092b633" "2642a1b7f53b9bb34c7f1e032d2098c852811ec2881eec2dc8cc07be004e45a0" "732b807b0543855541743429c9979ebfb363e27ec91e82f463c91e68c772f6e3" "a24c5b3c12d147da6cef80938dca1223b7c7f70f2f382b26308eba014dc4833a" default))
 '(fci-rule-color "#EF00B4")
 '(flycheck-pycheckers-checkers '(pylint pep8 flake8 pyflakes mypy2 mypy3))
 '(org-export-backends '(ascii beamer html icalendar latex md odt))
 '(package-selected-packages
   '(auto-sudoedit org nix-mode svelte-mode graphviz-dot-mode su gitlab-ci-mode gitlab-ci-mode-flycheck gitlab-pipeline git-link yasnippet-snippets yaml-mode which-key webpaste web-narrow-mode web-mode-edit-element web-beautify vlf use-package toc-org systemd sublimity sphinx-doc snazzy-theme smart-shift shfmt sequed restart-emacs rainbow-delimiters python-isort python-black pyimport pyenv-mode-auto py-autopep8 projectile pandoc ox-twbs ox-rst org-plus-contrib org-bullets numpydoc neotree markdown-toc manage-minor-mode magit-gitflow jupyter json-mode jinja2-mode importmagic iedit hungry-delete highlight-symbol highlight-indent-guides helm-swoop guess-language format-all flymake-yamllint flymake-yaml flycheck-yamllint flycheck-rtags fira-code-mode expand-region esup elpy elisp-format ecb dockerfile-mode diminish delight csv-mode company-web company-statistics company-shell company-reftex company-quickhelp company-php company-math company-jedi company-irony-c-headers company-fuzzy company-box company-bibtex company-auctex company-arduino company-ansible company-anaconda code-review buffer-move beacon auto-compile ansible-doc ansible all-the-icons-ibuffer))
 '(vc-annotate-background nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 113 :width normal :foundry "unknown"))))
 '(markdown-header-delimiter-face ((t (:foreground "mediumpurple"))))
 '(markdown-header-face-1 ((t (:foreground "violet" :weight bold :height 1.0))))
 '(markdown-header-face-2 ((t (:foreground "lightslateblue" :weight bold :height 1.0))))
 '(markdown-header-face-3 ((t (:foreground "mediumpurple1" :weight bold :height 1.0))))
 '(markdown-link-face ((t (:background "#0e1014" :foreground "#bd93f9"))))
 '(markdown-list-face ((t (:foreground "mediumpurple"))))
 '(markdown-pre-face ((t (:foreground "#bd98fe")))))
