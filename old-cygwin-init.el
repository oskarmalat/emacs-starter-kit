;;---------------------------------------------------------------------------
;; Extremely useful info on NT Emacs available at:
;; http://www.cs.washington.edu/homes/voelker/ntemacs.html
;;
;;---------------------------------------------------------------------------

;;---------------------------------------------------------------------------
;; Load, Exec & Program Paths 
;;---------------------------------------------------------------------------

;; Set the debug option to enable a backtrace when a
;; problem occurs.
(setq debug-on-error t)

(defvar grep-program
  ;; Currently zgrep has trouble.  It runs egrep instead of grep,
  ;; and it doesn't pass along long options right.
  "c:/cygwin/bin/grep")

;;---------------------------------------------------------------------------
;; Libraries To Load.
;;---------------------------------------------------------------------------

;; Gnuserver is for invoking emacs buffers from Explorer
;(require 'gnuserv)
;(gnuserv-start)
;(setq gnuserv-frame (selected-frame))

;;---------------------------------------------------------------------------
;; Fonts & Printing.
;;---------------------------------------------------------------------------

(require 'ps-print)

(setq ps-paper-type 'letter)
(setq ps-lpr-buffer   "c:\\\\temp\\\\psspool.ps")

;; To change the default font of Emacs frames using registry entries,
;; create a value in the key HKEY_CURRENT_USER\Software\GNU\Emacs:
;;
;;;   Value Name: Emacs.Font 
;;;   Value Type: REG_SZ 
;;;   String: (one of the following)
;;
;; "-outline-QuickType Mono-normal-r-normal-normal-11-82-96-96-c-*-iso8859-15"
;; "-outline-QuickType-normal-r-normal-normal-11-82-96-96-p-*-iso8859-15"
;; "-outline-Lucida Sans Typewriter-normal-r-normal-normal-11-82-96-96-c-*-iso8859-15"
;;
;; To print the font spec for a selected font, enter the 
;; following in the *scratch* pad:
;(insert (prin1-to-string (w32-select-font)))
;;---------------------------------------------------------------------------


;; Turn on font-lock in all modes that support it
(if (fboundp 'global-font-lock-mode)
    (global-font-lock-mode t))

;; Maximum colors
(setq font-lock-maximum-decoration t)

;;---------------------------------------------------------------------------
;; Key Bindings.
;;---------------------------------------------------------------------------

;; My keymaps
(define-key global-map "\C-ck" 'bury-buffer)
(define-key global-map "\C-cp" 'nt-ps-print-buffer-with-faces-nup)
(global-set-key "\M-o" 'other-frame)
(global-set-key "" 'electric-buffer-list)
(global-set-key "\M-?" 'jde-complete-at-point)
(global-set-key [f1]  'goto-line)
(global-set-key [f2]  'compile)
(global-set-key [S-f2] 'save-and-compile)
(global-set-key [f3]  'next-error)
(global-set-key [f4] 'save-and-compile)

(global-set-key [f11] 'repeat-complex-command)
(global-set-key [f12] 'undo)

(global-set-key [f17] 'wico-create-new)
(global-set-key [S-f18] 'wico-create-new)

(global-set-key [f5] 'start-kbd-macro)                       
(global-set-key [f6] 'end-kbd-macro)                       
(global-set-key [f7] 'call-last-kbd-macro)                       
(global-set-key [f8] 'ediff-revision)
(global-set-key "\M-%" 'query-replace-regexp)
(global-set-key [f9] 'ws-insert-header)
(global-set-key [f10] 'ws-insert-template)

;;--------------------------------------------------------------------------
;; Global Customization
;;--------------------------------------------------------------------------

(custom-set-faces
  ;; custom-set-faces was added by Custom -- don't edit or cut/paste it!
  ;; Your init file should contain only one such instance.
 )
 
(require 'ange-ftp)

;; '(ange-ftp-hash-mark-msgs "[hH]ash mark [^0-9]*\\([0-9]+\\)" t)

;; Seems to be required for grep commands
;; (setenv "PATH" (concat "d:\\dev\\emacs-tools\\x86;c:\\Cygwin\\bin;" (getenv "PATH")))

(custom-set-variables
  ;; custom-set-variables was added by Custom -- don't edit or cut/paste it!
  ;; Your init file should contain only one such instance.
 '(ange-ftp-ftp-program-args (list "-i" "-n" "-g" "-v" "--prompt" ""))
 '(ange-ftp-ftp-program-name "c:/cygwin/bin/ftp.exe")
 '(ange-ftp-gateway-ftp-program-name "c:/cygwin/bin/ftp.exe")
 '(ange-ftp-gateway-setup-term-command "stty -echo nl
" t)
 '(ange-ftp-try-passive-mode t)
 '(archive-zip-use-pkzip nil)
 '(c-basic-offset 2)
 '(c-offsets-alist (quote ((substatement-open . 0))))
 '(case-fold-search t)
 '(comint-scroll-to-bottom-on-input t)
 '(comint-scroll-to-bottom-on-output (quote this))
 '(explicit-bash-args (quote ("--rcfile" "~/.bashrc_emacs" "--noediting" "-i")))
 '(explicit-shell-file-name "bash")
 '(find-dired-find-program "c:/cygwin/bin/find.exe")
 '(find-file-visit-truename t)
 '(find-grep-options "-q" t)
 '(font-lock-keywords-case-fold-search nil t)
 '(grep-command "c:/cygwin/bin/grep.exe -n -e ")
 '(grep-find-command "c:/cygwin/bin/find . -type f -print0 | xargs -0 -e c:/cygwin/bin/grep.exe -n -e ")
 '(jdc-command (concat locallisppath "/../x86/jad"))
 '(jdc-create-source-file-p nil)
 '(jdc-parameter (quote ("-space" "-t4" "-b" "-p" "-dead" "-ff" "-i" "-l60" "-nl")))
 '(jde-compile-option-command-line-args "-source 1.4")
 '(jde-compile-option-deprecation t)
 '(jde-import-auto-sort t)
 '(jde-import-collapse-imports-threshold 5)
 '(jde-import-sorted-groups (quote asc))
 '(jde-make-program "ant")
 '(jde-quote-classpath t)
 '(jde-run-applet-viewer "appletviewer")
 '(sql-postgres-options (quote ("-Upostgres")))
 '(sql-user "postgres")
 '(transient-mark-mode t))

;;---------------------------------------------------------------------------
;; Customize Look & Feel of Emacs Frames.
;;---------------------------------------------------------------------------

;; Change the colors of the Mode Line to something you like.
;; To get a list of available colors, do M-x list-colors-display.
(set-face-foreground 'modeline "white")
(set-face-background 'modeline "Blue")


;;---------------------------------------------------------------------------
;; Setup Emacs to run bash as its primary shell.
;;---------------------------------------------------------------------------

(setq shell-file-name "bash")
(setq shell-command-switch "-c")
;;(setenv "SHELL" shell-file-name)
;;(setq explicit-sh-args '("-login" "-i"))

(setq w32-quote-process-args ?\") ;; Include only for MS Windows.

(add-hook 'shell-mode-hook
          '(lambda () 
             (local-set-key "\C-d" 'delete-char))
             t)

(defun my-sql-style ()
  (setq truncate-lines 1))

;;---------------------------------------------------------------------------
;; Other Customizations.
;;---------------------------------------------------------------------------

;; Disable these easily used by mistake commands that annoy people 
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
;; Disable hitting ESC twice eval lisp-expr.
(put 'eval-expression 'disabled nil)

;; Uncomment to allow recursive edits.
; (setq enable-recursive-minibuffers t)
