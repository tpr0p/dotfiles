(setq-default column-number-mode t
              indent-tabs-mode nil
              c-default-style "k&r"
              c-basic-offset 4
              c-indent-offset 4
              css-basic-offset 2
              css-indent-offset 2
              js-basic-offset 2
              js-indent-offset 2
              java-basic-offset 2
              java-indent-offset 2
              html-basic-offset 2
              html-indent-offset 2
              rst-basic-offset 4
              rst-indent-offset 4
              )
(global-set-key "\M-;" 'comment-or-uncomment-region)

(set-face-foreground 'mode-line "#ffffff")
(set-face-background 'mode-line "#ffffff")
(set-face-foreground 'mode-line-inactive "#ffffff")
(set-face-background 'mode-line-inactive "#ffffff")

(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
    (when no-ssl (warn "\                                                                                                                                                                                                                                                 
Your version of Emacs does not support SSL connections,                                                                                                                                                                                                                 
which is unsafe because it allows man-in-the-middle attacks.                                                                                                                                                                                                            
There are two things you can do about this warning:                                                                                                                                                                                                                     
1. Install an Emacs version that does support SSL and be safe.                                                                                                                                                                                                          
2. Remove this warning from your init file so you won't see it again."))
    (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
    ;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
    ;; and `package-pinned-packages`. Most users will not need or want to do this.
    ;;(add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
    )
(package-initialize)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(require 'julia-mode)
