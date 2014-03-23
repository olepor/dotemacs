;; This buffer is for notes you don't want to save, and for Lisp evaluation.
;; If you want to create a file, visit that file with C-x C-f,
;; then enter the text in that file's own buffer.

(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
(package-refresh-contents)
(if (require 'quelpa nil t)
    (quelpa '(quelpa :repo "quelpa/quelpa" :fetcher github) :upgrade t)
  (with-temp-buffer
    (url-insert-file-contents "https://raw.github.com/quelpa/quelpa/master/bootstrap.el")
    (eval-buffer)))

(setq quelpa-upgrade-p t)

(quelpa 'f)
(quelpa 's)
(quelpa 'dash)

(quelpa 'evil)
(quelpa 'evil-leader)
(quelpa 'evil-matchit)
(quelpa 'evil-numbers)
(quelpa 'evil-visualstar)
(quelpa 'elisp-slime-nav)
(quelpa 'ace-jump-mode)
(quelpa 'surround)

(quelpa 'company)
(quelpa 'company-jedi)
(quelpa 'company-cider)
(quelpa 'helm)
(quelpa 'helm-company)
(quelpa 'helm-cmd-t)
(quelpa 'helm-orgcard)
(quelpa 'helm-pydoc)
(quelpa 'helm-themes)
(quelpa 'imenu-anywhere)
(quelpa 'popwin)
(quelpa 'smex)

(quelpa '(org :url "git://orgmode.org/org-mode.git" :fetcher git
              :files ("lisp/*.el" "contrib/lisp/*.el" "doc/dir" "doc/*.texi")))
(quelpa 'calfw)

(unless (package-installed-p 'auctex) (package-install 'auctex))
(quelpa 'latex-extra)

(quelpa 'pretty-symbols)
(unless (package-installed-p 'rainbow-mode) (package-install 'rainbow-mode))
(quelpa 'rainbow-delimiters)
(quelpa 'unicode-whitespace)
(quelpa 'cl-lib-highlight)
(quelpa 'column-enforce-mode)
(quelpa 'smart-mode-line)

(quelpa 'yasnippet)
(quelpa 'smartparens)
(quelpa 'flycheck)
(quelpa 'magit)
(quelpa 'cider)
(quelpa 'clojure-cheatsheet)
(quelpa 'clojure-mode)
(quelpa 'multi-term)

(quelpa 'ix)
(quelpa 'crontab-mode)
(quelpa 'esup)
(quelpa 'eyebrowse)
(quelpa '(wc-mode :fetcher git :url "https://github.com/bnbeckwith/wc-mode"))
(quelpa '(zone-matrix :fetcher git :url "https://github.com/ober/zone-matrix"))
(quelpa 'esxml)

(quelpa 'skewer-mode)
(quelpa 'js2-mode)
(quelpa 'php-mode)
(quelpa 'php-boris)
(quelpa 'php-boris-minor-mode)
(quelpa 'web-mode)

(quelpa 'circe)
(quelpa 'highlight-tail)
(quelpa 'tumblesocks)
(quelpa 'elfeed)
(quelpa 'nyan-mode)
(quelpa 'nyan-prompt)
(quelpa 'typing)
