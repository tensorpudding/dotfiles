(setq elisp-dir "~/.emacs.d/")
(setq haskell-enabled t)
(setq haskell-elisp-dir "~/.emacs.d/haskell-mode/")
(setq tuareg-enabled t)
(setq tuareg-elisp-dir "~/.emacs.d/tuareg/")
(setq d-enabled t)
(setq d-elisp-dir "~/.emacs.d/d-mode/")
(setq proof-enabled t)
(setq proof-elisp-dir "~/.emacs.d/ProofGeneral/")
(setq clojure-enabled t)
(setq clojure-elisp-dir "~/.emacs.d/clojure-mode/")
(setq swank-clojure-enabled nil)
(setq swank-clojure-elisp-dir "")
(setq go-enabled t)
(setq go-elisp-dir "~/.emacs.d/go/")
(setq ess-enabled t)
(setq ess-elisp-dir "~/.emacs.d/ess/")
(setq rinari-enabled t)
(setq rinari-elisp-dir "~/.emacs.d/rinari/")
(setq ecb-enabled t)
(setq ecb-elisp-dir "~/.emacs.d/ecb/")
(setq erlang-enabled t)
(setq erlang-root-dir "/usr/local/lib/erlang/")
(setq erlang-tools-version "2.6.5.1")
(setq auctex-enabled t)
(setq auctex-elisp-dir "/usr/local/share/emacs/site-lisp/")
(setq dvc-enabled t)
(setq dvc-elisp-dir "~/.emacs.d/dvc/")
(setq cedet-enabled t)
(setq cedet-elisp-dir "~/.emacs.d/cedet/")
(setq cedet-ede-enabled t)
(setq cedet-completion-enabled t)
(setq cedet-template-enabled t)
(setq magit-enabled nil)
(setq magit-elisp-dir "")
(setq ruby-program-name "irb --inf-ruby-mode -f")
(setq flymake-enabled nil)
(setq midnight-enabled t)
(setq erc-truncate-buffer-on-save t)
(setq hpaste-enabled t)
(setq linum-enabled t)

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
 '(browse-url-generic-program "uzbl-browser")
 '(column-number-mode t)
 '(comment-style (quote plain))
 '(display-time-mode t)
 '(dvc-tips-enabled nil)
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

(load "~/.emacs.rc")
