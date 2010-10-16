;; -*-Lisp-*-
;;
;; Load elisp dir
;;
(setq elisp-dir "~/.elisp/")
(add-to-list 'load-path elisp-dir)
;;
;; Load Haskell mode
;;
(setq haskell-elisp-dir (concat elisp-dir "haskell-mode/"))
(add-to-list 'load-path haskell-elisp-dir)
(load (concat haskell-elisp-dir "haskell-site-file.el"))
(autoload 'haskell-mode "haskell-mode" "Major mode for editing Haskell" t)
(autoload 'literate-haskell-mode "haskell-mode" 
  "Major mode for editing literate Haskell" t)
(add-to-list 'auto-mode-alist '("\\.[hg]s$" . haskell-mode))
(add-to-list 'auto-mode-alist '("\\.l[hg]s$" . literate-haskell-mode))
(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)
(add-hook 'haskell-mode-hook 'turn-on-haskell-simple-indent)
;;
;; Load OCaml major mode (Tuareg)
;;
(setq tuareg-elisp-dir (concat elisp-dir "tuareg/"))
(add-to-list 'load-path tuareg-elisp-dir)
(load (concat tuareg-elisp-dir "tuareg.el"))
(autoload 'tuareg-mode "tuareg" "Major mode for editing Caml code" t)
(autoload 'camldebug "camldebug" "Run the Caml debugger" t)
(add-to-list 'auto-mode-alist '("\\.ml$" . tuareg-mode))
;;
;; Load D major mode
;;
(setq d-elisp-dir (concat elisp-dir "d-mode/"))
(add-to-list 'load-path d-elisp-dir)
(autoload 'd-mode "d-mode" "Major mode for editing D code." t)
(add-to-list 'auto-mode-alist '("\\.d[i]?\\'" . d-mode))
;;
;; Load Go major mode
;;
(setq go-elisp-dir (concat elisp-dir "go/"))
(add-to-list 'load-path go-elisp-dir)
(require 'go-mode-load)
;;
;; Load Clojure major mode
;;
;; (setq clojure-elisp-dir (concat elisp-dir "clojure-mode/"))
;; (add-to-list 'load-path clojure-elisp-dir)
;; (require 'clojure-mode)
;;
;; Load Yacc major mode
;;
(setq yacc-elisp-dir (concat elisp-dir "yacc-mode/"))
(add-to-list 'load-path yacc-elisp-dir)
(autoload 'yacc-mode "yacc.el")
(add-to-list 'auto-mode-alist '("\\.y$" . yacc-mode))
;;
;; Load ProofGeneral
;;
(setq proof-elisp-dir (concat elisp-dir "ProofGeneral/"))
(add-to-list 'load-path proof-elisp-dir)
(load-file (concat proof-elisp-dir "generic/proof-site.el"))
;;
;; Load ESS (Emacs Speaks Statistics)
;;
(setq ess-elisp-dir (concat elisp-dir "ess/"))
(add-to-list 'load-path ess-elisp-dir)
(load (concat ess-elisp-dir "lisp/ess-site"))
;;
;; Load Rinari
;;
;; (setq rinari-elisp-dir (concat elisp-dir "rinari/"))
;; (add-to-list 'load-path rinari-elisp-dir)
;; (require 'rinari)
;;
;; Load ECB (Emacs Code Browser)
;;
;; (setq ecb-elisp-dir (concat elisp-dir "ecb/"))
;; (add-to-list 'load-path ecb-elisp-dir)
;; (require 'ecb)
;;
;; Load AUCTeX
;;
;; (setq auctex-elisp-dir (concat elisp-dir "auctex/"))
;; (load (concat auctex-elisp-dir "auctex.el") nil t t)
;; (load (concat auctex-elisp-dir "preview-latex.el") nil t t)
;;
;; Load DVC (Distributed Version Control)
;;
;; (setq dvc-elisp-dir (concat elisp-dir "dvc/"))
;; (add-to-list 'load-path (concat dvc-elisp-dir "lisp/"))
;; (add-to-list 'Info-default-directory-list (concat dvc-elisp-dir "texinfo/"))
;; (require 'dvc-autoloads)
;;
;; Load CEDET (Common Emacs Development Environment)
;;
;; (setq cedet-elisp-dir (concat elisp-dir "cedet/"))
;; (setq cedet-ede-enabled t)
;; (setq cedet-completion-enabled t)
;; (setq cedet-template-enabled t)
;; (load-file (concat cedet-elisp-dir "common/cedet.el"))
;; (when cedet-ede-enabled (global-ede-mode 1))
;; (when cedet-completion-enabled (semantic-load-enable-code-helpers))
;; (when cedet-template-enabled (global-srecode-minor-mode 1))
;;
;; Load Flymake
;;
;; (add-hook 'find-file-hook flymake-find-file-hook)
;;
;; Load midnight
;;
(require 'midnight)
;;
;; Enable Linux (line numbering) globally
;;
(global-linum-mode 1)
;;
;; Set ruby program
;; 
(setq ruby-program-name "irb --inf-ruby-mode -f")
;;
;; Require final newline
;;
(setq require-final-newline t)
;;
;; Set variables
;;
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(TeX-PDF-mode t)
 '(TeX-output-view-style (quote (("^dvi$" ("^landscape$" "^pstricks$\\|^pst-\\|^psfrag$") "%(o?)dvips -t landscape %d -o && gv %f") ("^dvi$" "^pstricks$\\|^pst-\\|^psfrag$" "%(o?)dvips %d -o && gv %f") ("^dvi$" ("^\\(?:a4\\(?:dutch\\|paper\\|wide\\)\\|sem-a4\\)$" "^landscape$") "%(o?)xdvi %dS -paper a4r -s 0 %d") ("^dvi$" "^\\(?:a4\\(?:dutch\\|paper\\|wide\\)\\|sem-a4\\)$" "%(o?)xdvi %dS -paper a4 %d") ("^dvi$" ("^\\(?:a5\\(?:comb\\|paper\\)\\)$" "^landscape$") "%(o?)xdvi %dS -paper a5r -s 0 %d") ("^dvi$" "^\\(?:a5\\(?:comb\\|paper\\)\\)$" "%(o?)xdvi %dS -paper a5 %d") ("^dvi$" "^b5paper$" "%(o?)xdvi %dS -paper b5 %d") ("^dvi$" "^letterpaper$" "%(o?)xdvi %dS -paper us %d") ("^dvi$" "^legalpaper$" "%(o?)xdvi %dS -paper legal %d") ("^dvi$" "^executivepaper$" "%(o?)xdvi %dS -paper 7.25x10.5in %d") ("^dvi$" "." "%(o?)xdvi %dS %d") ("^pdf$" "." "evince %o %(outpage)") ("^html?$" "." "netscape %o"))))
 '(backup-directory-alist (quote (("." . "/home/michael/.emacs.d/backups"))))
 '(blink-cursor-mode nil)
 '(browse-url-browser-function (quote browse-url-generic))
 '(browse-url-generic-program "google-chrome")
 '(column-number-mode t)
 '(comment-style (quote plain))
 '(display-time-mode t)
 '(dvc-tips-enabled nil)
 '(ecb-options-version "2.32")
 '(erc-autojoin-channels-alist (quote (("freenode.net" "##freebsd" "#go-nuts" "#python" "#haskell" "#ruby-lang" "#clojure" "#debian" "##linux" "#haskell-blah" "#math" "#ubuntu"))))
 '(erc-autojoin-mode t)
 '(erc-insert-post-hook (quote (erc-truncate-buffer erc-make-read-only erc-track-modified-channels erc-truncate-buffer)))
 '(erc-join-buffer (quote bury))
 '(erc-max-buffer-size 100000)
 '(erc-nick "tensorpudding")
 '(erc-nick-uniquifier "`")
 '(erc-port 6667)
 '(erc-server "irc.freenode.net")
 '(erc-truncate-mode t)
 '(erc-try-new-nick-p nil)
 '(fringe-mode 0 nil (fringe))
 '(ido-mode (quote both) nil (ido))
 '(inhibit-startup-screen t)
 '(menu-bar-mode nil)
 '(midnight-mode t nil (midnight))
 '(nil nil t)
 '(scheme-program-name "mzscheme")
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(slime-lisp-implementations (quote ((clojure ("java" "-classpath" "/home/michael/.clojure/clojure.jar:/home/michael/code/swank-clojure/src/main/clojure/:/home/michael/.emacs.d/swank-clojure/src/main/clojure:/home/michael/.clojure/clojure-contrib.jar" "clojure.main" "--repl") :init swank-clojure-init) (sbcl ("/usr/bin/sbcl")))) t)
 '(swank-clojure-extra-classpaths (list "~/.emacs.d/swank-clojure/src/main/clojure/swank" "~/.clojure/clojure-contrib.jar"))
 '(swank-clojure-jar-path "~/.clojure/clojure.jar")
 '(tool-bar-mode nil)
 '(tooltip-mode nil)
 '(tramp-encoding-shell "/bin/bash")
 '(tramp-verbose 0)
 '(visible-bell t))

(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#2e3436" :foreground "#eeeeec" :inverse-video nil :box nil))))
 '(erc-bold-face ((t (:foreground "deep pink" :weight bold))))
 '(erc-input-face ((t (:foreground "thistle"))))
 '(erc-my-nick-face ((t (:foreground "slateblue" :weight bold))))
 '(erc-nick-default-face ((t (:foreground "light steel blue" :weight bold))))
 '(erc-notice-face ((t (:foreground "LightSlateBlue" :weight bold))))
 '(ido-first-match ((t (:foreground "lightblue" :weight bold)))))
