;; -*-Lisp-*-

;;
;; Load elisp dir
;;

(setq elisp-dir "~/.elisp/")
(add-to-list 'load-path elisp-dir)

;;
;; Load jbo.el
;;

(setq jbo-dir (concat elisp-dir "jbo.el/"))
(add-to-list 'load-path jbo-dir)
(require 'jbo)
(global-set-key (kbd "C-c M-l") 'jbo-lookup-at-point)

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
;; Load Flex/lex major mode
;;

(setq flex-elisp-dir (concat elisp-dir "flex-mode/"))
(add-to-list 'load-path flex-elisp-dir)
(autoload 'flex-mode "flex-mode.el")
(add-to-list 'auto-mode-alist '("\\.l$" . flex-mode))

;;
;; Load Markdown major mode
;;

(setq mardown-elisp-dir (concat elisp-dir "markdown-mode/"))
(autoload 'markdown-mode "markdown-mode.el")
(add-to-list 'auto-mode-alist '("\\.md$" . markdown-mode))

;;
;; Load column-marker.el
;;

(setq column-marker-dir (concat elisp-dir "column-marker/"))
(add-to-list 'load-path column-marker-dir)
(require 'column-marker)

;;
;; Create code functions 
;; Put this after all coding major modes have been loaded

(defun turn-on-columns ()
  (interactive)
  (column-marker-1 70)
  (column-marker-2 80))

(defun turn-off-erc-modeline-tracking ()
  (interactive)
  (set (make-local-variable 'erc-modified-channels-object) nil))

(defun turn-on-line-numbering ()
  (interactive)
  (linum-mode 1)
  (setq linum-format "%d "))

(defun run-code-hooks ()
  (interactive)
  (turn-on-columns)
  (turn-off-erc-modeline-tracking)
  (turn-on-line-numbering))

(setq coding-major-modes '(elisp-mode c-mode asm-mode python-mode ruby-mode 
				      haskell-mode literate-haskell-mode 
				      tuareg-mode markdown-mode d-mode yacc-mode
				      ld-script-mode R-mode c++-mode forth-mode
				      fortran-mode go-mode javascript-mode 
				      latex-mode makefile-mode objc-mode 
				      octave-mode pascal-mode perl-mode 
				      scheme-mode html-mode flex-mode))

(while coding-major-modes
  (add-hook (intern (concat (symbol-name (car coding-major-modes)) "-hook")) 
	    'run-code-hooks)
  (setq coding-major-modes (cdr coding-major-modes)))

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
;; Load ELPA (Emacs packaging) with package.el
;;

(setq package-elisp-dir (concat elisp-dir "package.el/"))
(add-to-list 'load-path package-elisp-dir)
(load "package")
(package-initialize)

;;
;; Load Emacs Privacy Assistant
;;

(require 'epa)
(epa-file-enable)

;;
;; Load Rinari
;;

;; (setq rinari-elisp-dir (concat elisp-dir "rinari/"))
;; (add-to-list 'load-path rinari-elisp-dir)
;; (require 'rinari)

;;
;; Load CEDET (Common Emacs Development Environment)
;;

(setq cedet-elisp-dir (concat elisp-dir "cedet/"))
(setq cedet-ede-enabled t)
(setq cedet-completion-enabled t)
(setq cedet-template-enabled t)
(load-file (concat cedet-elisp-dir "common/cedet.el"))
(when cedet-ede-enabled (global-ede-mode 1))
(when cedet-completion-enabled (semantic-load-enable-code-helpers))
(when cedet-template-enabled (global-srecode-minor-mode 1))

;;
;; Load ECB (Emacs Code Browser)
;;

(setq ecb-elisp-dir (concat elisp-dir "ecb/"))
(add-to-list 'load-path ecb-elisp-dir)
(require 'ecb)

;;
;; Load Auto-Complete
;;

(setq autocomplete-elisp-dir (concat elisp-dir "auto-complete/"))
(add-to-list 'load-path autocomplete-elisp-dir)
(require 'auto-complete)
(add-to-list 'ac-dictionary-directories (concat autocomplete-elisp-dir "dict/"))
(require 'auto-complete-config)
(ac-config-default)

;;
;; Load nXhtml for webdev
;;

;; (setq nxhtml-elisp-dir (concat elisp-dir "nxhtml/"))
;; (load-file (concat nxhtml-elisp-dir "autostart.el"))

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
;; Load Flymake
;;

;; (add-hook 'find-file-hook flymake-find-file-hook)

;;
;; Session management
;;

(desktop-save-mode t)
(require 'midnight)
(savehist-mode 1)

;;
;; Set ruby program
;; 

(setq ruby-program-name "irb --inf-ruby-mode -f")

;;
;; Require final newline
;;

(setq require-final-newline t)

;;
;; Start server
;;

(server-start)

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
 '(ecb-compilation-major-modes (quote (compilation-mode slime-mode)))
 '(ecb-compile-window-height 6)
 '(ecb-compile-window-width (quote edit-window))
 '(ecb-options-version "2.40")
 '(ecb-tip-of-the-day nil)
 '(erc-autojoin-channels-alist (quote (("freenode.net" "##crawl" "##freebsd" "#go-nuts" "#python" "#haskell" "#ruby-lang" "#clojure" "#debian" "#lojban" "##linux" "#haskell-blah" "#math" "#ubuntu" "#ubuntu-offtopic" "#emacs"))))
 '(erc-autojoin-mode t)
 '(erc-insert-post-hook (quote (erc-truncate-buffer erc-make-read-only erc-track-modified-channels erc-truncate-buffer)))
 '(erc-join-buffer (quote bury))
 '(erc-max-buffer-size 100000)
 '(erc-nick "tensorpudding")
 '(erc-nick-uniquifier "`")
 '(erc-port 6667)
 '(erc-server "irc.freenode.net")
 '(erc-track-exclude-types (quote ("JOIN" "KICK" "NICK" "PART" "QUIT" "MODE" "333" "353")))
 '(erc-track-position-in-mode-line (quote before-modes))
 '(erc-track-shorten-aggressively (quote max))
 '(erc-track-use-faces t)
 '(erc-truncate-mode t)
 '(erc-try-new-nick-p nil)
 '(fringe-mode 0 nil (fringe))
 '(ido-mode (quote both) nil (ido))
 '(inferior-lisp-program "clojure -r")
 '(inhibit-startup-screen t)
 '(menu-bar-mode t)
 '(midnight-mode t nil (midnight))
 '(nil nil t)
 '(scheme-program-name "mzscheme")
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(tooltip-mode nil)
 '(tramp-encoding-shell "/bin/bash")
 '(tramp-verbose 0)
 '(visible-bell t))
;;
;; Set faces
;;
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
 '(ido-first-match ((t (:foreground "lightblue" :weight bold))))
 '(jbo-definition ((((class color) (background dark)) (:foreground "gray")))))
