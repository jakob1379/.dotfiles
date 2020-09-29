;;; Commentary:
;;" init.el: settings from customise-*

;;; Code:
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(org-babel-load-file "~/.emacs.d/config.org")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   ["#2d3743" "#ff4242" "#74af68" "#dbdb95" "#34cae2" "#008b8b" "#00ede1" "#e1e1e0"])
 '(ansi-term-color-vector
   [unspecified "#1e1f29" "#ff5c57" "#5af78e" "#f3f99d" "#57c7ff" "#ff6ac1" "#57c7ff" "#eff0eb"] t)
 '(column-number-mode t)
 '(cua-enable-cua-keys t)
 '(cua-mode t nil (cua-base))
 '(custom-enabled-themes '(snazzy))
 '(custom-safe-themes
   '("669e02142a56f63861288cc585bee81643ded48a19e36bfdf02b66d745bcc626" "0e8bac1e87493f6954faf5a62e1356ec9365bd5c33398af3e83cfdf662ad955f" "bf5bdab33a008333648512df0d2b9d9710bdfba12f6a768c7d2c438e1092b633" "2642a1b7f53b9bb34c7f1e032d2098c852811ec2881eec2dc8cc07be004e45a0" "732b807b0543855541743429c9979ebfb363e27ec91e82f463c91e68c772f6e3" "a24c5b3c12d147da6cef80938dca1223b7c7f70f2f382b26308eba014dc4833a" default))
 '(delete-selection-mode t)
 '(ecb-options-version "2.50")
 '(fci-rule-color "#37474f")
 '(flycheck-pycheckers-checkers '(pylint pep8 flake8 pyflakes mypy2 mypy3))
 '(global-linum-mode t)
 '(global-visual-line-mode t)
 '(hl-sexp-background-color "#1c1f26")
 '(inhibit-startup-screen t)
 '(org-export-backends '(ascii beamer html icalendar latex md odt))
 '(package-selected-packages
   '(pretty-mode auctex-auto-bibtex highlight mode-modeline theme company-anaconda whitespace-cleanup-mode company-rtags flycheck-pos-tip jedi-jedi lua-math-mode sphinx-sublimity outline-toc doxygen-ecb-edit shell-smiles expand-region flycheck-flycheck-flyspell-flyspell indent-guide smiles-mode ext-fill sphinx-doc latex-latexmk pyenv-mode flyspell-correct region-rtags buffer-expose webpaste company buffer-c auctex-latexmk correct-delete c doom-modeline jedi-language popup-popup-pos company-conda ecb flycheck-irony flyspell-guess company-jedi core-correct yasnippet-snippets company-c-headers headers-highlight sudo-edit highlight-doxygen flycheck packages auctex-lua pane-paredit-pdf indicator-irony company-lua all-anaconda toc-org list symbol-symbols-the flyspell-correct-popup latex-preview-pane dired-direx-doc toc-tools-treemacs jedi doom elpy tip-toc flycheck-pycheckers company-company ialign expand-expose snazzy-snippets paredit webpaste-whitespace company-irony neotree-org-outline hungry-delete hungry-ialign pylint treemacs-icons-dired indent company-reftex company-bibtex guide-headers all-the-icons yasnippet guess-language company-irony-c-headers ein pretty mode-mode company-math pylint-ranger company-shell company-auctex irony-jedi irony conda sublimity fill-column-indicator snazzy-theme list-packages-ext highlight-symbol jedi-direx preview auctex-auctex jedi-core pretty-symbols reftex ein-elpy icons-icons sudo pdf-tools cleanup-column neotree flycheck-flycheck irony-irony flyspell-popup pycheckers-pyenv-pyenv lua ranger pyenv-mode-auto))
 '(show-paren-mode t)
 '(show-paren-style 'mixed)
 '(tool-bar-style 'image)
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   '((20 . "#f36c60")
     (40 . "#ff9800")
     (60 . "#fff59d")
     (80 . "#8bc34a")
     (100 . "#81d4fa")
     (120 . "#4dd0e1")
     (140 . "#b39ddb")
     (160 . "#f36c60")
     (180 . "#ff9800")
     (200 . "#fff59d")
     (220 . "#8bc34a")
     (240 . "#81d4fa")
     (260 . "#4dd0e1")
     (280 . "#b39ddb")
     (300 . "#f36c60")
     (320 . "#ff9800")
     (340 . "#fff59d")
     (360 . "#8bc34a")))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 113 :width normal :foundry "unknown")))))
