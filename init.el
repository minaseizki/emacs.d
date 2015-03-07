(when (>= emacs-major-version 24)
(global-linum-mode t)
(set-frame-height (next-frame) 90)
(set-frame-width (next-frame) 160)
(tool-bar-mode -1)
(setq backup-inhibited t)
(set-face-attribute 'linum nil
:foreground "#ffffff"
:height 0.8)
(setq fixed-width-use-QuickDraw-for-ascii t)
(setq mac-allow-anti-aliasing t)
(set-face-attribute 'default nil
:family "monaco"
:height 120)
(set-fontset-font
(frame-parameter nil 'font)
'japanese-jisx0208
'("Hiragino Maru Gothic Pro" . "iso10646-1"))
(set-fontset-font
(frame-parameter nil 'font)
'japanese-jisx0212
'("Hiragino Maru Gothic Pro" . "iso10646-1"))
(set-fontset-font
(frame-parameter nil 'font)
'katakana-jisx0201
'("Hiragino Maru Gothic Pro" . "iso10646-1"))
(set-fontset-font
(frame-parameter nil 'font)
'mule-unicode-0100-24ff
'("monaco" . "iso10646-1"))
(set-fontset-font
(frame-parameter nil 'font)
'cyrillic-iso8859-5
'("monaco" . "iso10646-1"))
(set-fontset-font
(frame-parameter nil 'font)
'greek-iso8859-7
'("monaco" . "iso10646-1"))
(setq face-font-rescale-alist
'(("^-apple-hiragino.*" . 1.0)
(".*osaka-bold.*" . 1.0)
(".*osaka-medium.*" . 1.0)
(".*courier-bold-.*-mac-roman" . 1.0)
(".*monaco cy-bold-.*-mac-cyrillic" . 1.0)
(".*monaco-bold-.*-mac-roman" . 1.0)
("-cdac$" . 1.3))))
(add-hook 'font-lock-mode-hook
'(lambda ()
(set-face-foreground 'font-lock-comment-face "#eeeeee")
(set-face-foreground 'font-lock-string-face "#99ffff")
(set-face-foreground 'font-lock-keyword-face "#6699cc")
(set-face-foreground 'font-lock-builtin-face "#eeeeff")
(set-face-foreground 'font-lock-function-name-face "LightSkyBlue")
(set-face-foreground 'font-lock-variable-name-face "#eeeeff")
(set-face-foreground 'font-lock-type-face "PaleGreen")
(set-face-foreground 'font-lock-constant-face "Aquamarine")
(set-face-foreground 'font-lock-warning-face "Pink")
)
)
(if window-system (progn
(set-background-color "Black")
(set-foreground-color "LightGray")
(set-cursor-color "white")
(set-frame-parameter nil 'alpha 85)
))
(custom-set-variables
'(ansi-color-names-vector ["#2d3743" "#ff4242" "#74af68" "#dbdb95" "#34cae2" "#008b8b" "#00ede1" "#e1e1e0"])
'(custom-enabled-themes (quote (manoj-dark))))
(custom-set-faces)
(setq default-frame-alist
(append (list
'(cursor-color . "snow")
'(cursor-type . bar)
)
default-frame-alist))
(put 'dired-find-alternate-file 'disabled nil)

;;; evil
(require 'package)
(add-to-list 'package-archives
'("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

(defun package-install-with-refresh (package)
    (unless (assq package package-alist)
        (package-refresh-contents))
    (unless (package-installed-p package)
        (package-install package)))

(package-install-with-refresh 'evil)

(require 'evil)
(evil-mode 1)

;;; evil-surround.el
(require 'evil-surround)
(global-evil-surround-mode 1)
