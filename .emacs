;;
;;;;
;; Setting load path
;;;;
;;

(add-to-list 'load-path "~/.emacs.d/") ;; Base loadpath
(add-to-list 'load-path "~/.emacs.d/haskell-mode/") ;; Haskell major modes
(add-to-list 'load-path "~/.emacs.d/tuareg/") ;; Tuareg Ocaml mode
(add-to-list 'load-path "~/.emacs.d/d-mode/") ;; D mode
(add-to-list 'load-path "~/.emacs.d/clojure-mode/") ;; Clojure mode
;; (add-to-list 'load-path "~/.emacs.d/swank-clojure/src/emacs/") ;; Clojure for swank
(add-to-list 'load-path "~/.emacs.d/ProofGeneral/") ;; Proof General environment
(add-to-list 'load-path "~/.emacs.d/go/") ;; Go mode
(add-to-list 'load-path "~/.emacs.d/ess/") ;; Emacs for Statistics (GNU R)
;;
;;;;
;; Loading Elisp files
;;;;
;;

(require 'clojure-mode) ;; Loading Clojure mode
;; (require 'swank-clojure-autoload) ;; Loading Clojure for swank
(load "haskell-mode/haskell-site-file") ;; Loading Haskell major mode
(load "tuareg/tuareg.el") ;; Loading Tuareg
(load-file "~/.emacs.d/ProofGeneral/generic/proof-site.el") ;; ProofGeneral
(load "~/.emacs.d/ess/lisp/ess-site") ;; Loading ESS (GNU R)
;; (load "coq.el") ;; Coq, broken by ProofGeneral
;; (load "inferior-coq.el")
(require 'go-mode-load)

;; AUCTeX requires to be installed and all that shit
(load "/usr/local/share/emacs/site-lisp/auctex.el" nil t t)
(load "/usr/local/share/emacs/site-lisp/preview-latex.el" nil t t)
;; DVC compiled in .emacs.d
(load "~/.emacs.d/dvc/++build/dvc-load.el")

;;
;;;;
;; Language major modes autoloads and config
;;;;
;;

;;   (setq auto-mode-alist (cons '("\\.v$" . coq-mode) auto-mode-alist))
;;   (autoload 'coq-mode "coq" "Major mode for editing Coq vernacular." t)
;; (autoload 'run-coq "inferior-coq" "Run an inferior Coq process." t)
;; (autoload 'run-coq-other-window "inferior-coq"
;;   "Run an inferior Coq process in a new window." t)
;; (autoload 'run-coq-other-frame "inferior-coq"
;;   "Run an inferior Coq process in a new frame." t)
(autoload 'tuareg-mode "tuareg" "Major mode for editing Caml code" t)
(autoload 'camldebug "camldebug" "Run the Caml debugger" t)
(autoload 'd-mode "d-mode" "Major mode for editing D code." t)
(autoload 'haskell-mode "haskell-mode" "Major mode for editing Haskell" t)
(autoload 'literate-haskell-mode "haskell-mode" 
  "Major mode for editing literate Haskell" t)
(add-to-list 'auto-mode-alist '("\\.d[i]?\\'" . d-mode))
(add-to-list 'auto-mode-alist '("\\.ml$" . tuareg-mode))
;; (add-to-list 'auto-mode-alist '("\\.rhtml\\w?" . html-mode))
(add-to-list 'auto-mode-alist '("\\.[hg]s$" . haskell-mode))
(add-to-list 'auto-mode-alist '("\\.[hi]$" . haskell-mode))
(add-to-list 'auto-mode-alist '("\\.l[hg]s$" . literate-haskell-mode))
;; (add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)
(add-hook 'haskell-mode-hook 'turn-on-haskell-simple-indent)
;; (add-hook 'org-mode-hook 'turn-on-font-lock)


;; Hacks and other things



;;
;;;;
;; Fixing stupid ruby
;;;;
;;
(setq ruby-program-name "irb --inf-ruby-mode -f")
;;
;;;;
;; Magit, a git mode
;;;;
;;
;;(require 'magit)
;;(global-set-key (kbd "<f6>") 'magit-status)
;;
;;;;
;; Midnight
;;;;
;;
(require 'midnight)
;;
;;;;
;; ERC truncating automatically
;;;;
;;
(setq erc-truncate-buffer-on-save t)
;;
;;;;
;; Hpaste.el: hpaste integration for emacs
;;;;
;;
(require 'hpaste)
;;
;;;;
;; Starting emacs as a server
;;;;
;;
(server-start)
;;
;;;;
;; Set color for cursor (needed for Windows Emacs 23.2)
;;;;
;;
(set-cursor-color "white")
;;
;;;;
;; Customized Variables/Faces
;;;;
;;
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(TeX-PDF-mode t)
 '(TeX-output-view-style (quote (("^dvi$" ("^landscape$" "^pstricks$\\|^pst-\\|^psfrag$") "%(o?)dvips -t landscape %d -o && gv %f") ("^dvi$" "^pstricks$\\|^pst-\\|^psfrag$" "%(o?)dvips %d -o && gv %f") ("^dvi$" ("^\\(?:a4\\(?:dutch\\|paper\\|wide\\)\\|sem-a4\\)$" "^landscape$") "%(o?)xdvi %dS -paper a4r -s 0 %d") ("^dvi$" "^\\(?:a4\\(?:dutch\\|paper\\|wide\\)\\|sem-a4\\)$" "%(o?)xdvi %dS -paper a4 %d") ("^dvi$" ("^\\(?:a5\\(?:comb\\|paper\\)\\)$" "^landscape$") "%(o?)xdvi %dS -paper a5r -s 0 %d") ("^dvi$" "^\\(?:a5\\(?:comb\\|paper\\)\\)$" "%(o?)xdvi %dS -paper a5 %d") ("^dvi$" "^b5paper$" "%(o?)xdvi %dS -paper b5 %d") ("^dvi$" "^letterpaper$" "%(o?)xdvi %dS -paper us %d") ("^dvi$" "^legalpaper$" "%(o?)xdvi %dS -paper legal %d") ("^dvi$" "^executivepaper$" "%(o?)xdvi %dS -paper 7.25x10.5in %d") ("^dvi$" "." "%(o?)xdvi %dS %d") ("^pdf$" "." "evince %o %(outpage)") ("^html?$" "." "netscape %o"))))
 '(blink-cursor-mode nil)
 '(column-number-mode t)
 '(comment-style (quote plain))
 '(display-time-mode t)
 '(ecb-options-version "2.32")
 '(erc-autojoin-channels-alist (quote (("freenode.net" "#emacs" "#coq" "##freebsd" "#ruby-lang" "#xmonad" "#haskell" "#haskell-blah" "#math"))))
 '(erc-autojoin-mode t)
 '(erc-insert-post-hook (quote (erc-truncate-buffer erc-make-read-only erc-track-modified-channels erc-truncate-buffer)))
 '(erc-join-buffer (quote bury))
 '(erc-max-buffer-size 100000)
 '(erc-nick "tensorpudding")
 '(erc-nick-uniquifier "`")
 '(erc-port 6667)
 '(erc-server "irc.freenode.net")
 '(erc-truncate-mode t)
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
