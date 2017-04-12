(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(backup-by-copying t)
 '(backup-directory-alist (quote (("." . "~/.emacs.d/backups"))))
 '(column-number-mode t)
 '(cscope-option-do-not-update-database t)
 '(custom-enabled-themes (quote (tango-dark)))
 '(custom-safe-themes
   (quote
    ("81e2fea7743efa9696241ff5933579a8007f9d9df85f651c9efde5e6f3dd6bbc" "05e436673dcaca79362177872c3a01f3d5894ef43caf857676145eae23303501" "64b28ef2e7c5aefbb28a828accc0160b9e6e23d7d919441d8f602654bbd9bc10" default)))
 '(electric-pair-mode t)
 '(flymake-check-file-limit 8192000 t)
 '(flymake-no-changes-timeout 500000000)
 '(global-highlight-parentheses-mode t)
 '(global-whitespace-mode t)
 '(ido-mode (quote both) nil (ido))
 '(inhibit-startup-screen t)
 '(kept-new-versions 6)
 '(py-indent-paren-spanned-multilines-p nil)
 '(recentf-auto-cleanup (quote never))
 '(recentf-mode t)
 '(ropemacs-enable-autoimport t)
 '(ropemacs-enable-shortcuts nil)
 '(server-mode t)
 '(show-paren-mode t)
 '(uniquify-buffer-name-style (quote forward) nil (uniquify))
 '(vc-display-status nil)
 '(vc-handled-backends nil)
 '(version-control (quote never))
 '(whitespace-action (quote (auto-cleanup)))
 '(whitespace-display-mappings nil)
 '(whitespace-line-column 120)
 '(whitespace-style
   (quote
    (face tabs spaces trailing lines space-before-tab indentation empty space-after-tab space-mark tab-mark newline-mark))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ac-selection-face ((t (:background "darkblue" :foreground "white"))))
 '(completions-first-difference ((t (:inherit bold :foreground "green"))))
 '(custom-button ((((type x w32 ns) (class color)) (:background "lightgrey" :foreground "black" :box (:line-width 1 :style released-button)))))
 '(custom-button-mouse ((((type x w32 ns) (class color)) (:background "grey90" :foreground "black" :box (:line-width 1 :style released-button)))))
 '(custom-button-pressed ((((type x w32 ns) (class color)) (:background "lightgrey" :foreground "black" :box (:line-width 1 :style pressed-button)))))
 '(egg-branch ((t (:inherit egg-header :foreground "Yellow" :height 150))))
 '(egg-header ((t (:weight bold :height 130))))
 '(egg-help-header-2 ((t (:inherit egg-text-1 :foreground "LightSteelBlue"))))
 '(egg-log-HEAD ((t (:background "grey20"))))
 '(egg-text-2 ((t (:inherit egg-text-base))))
 '(egg-text-base ((t (:inherit variable-pitch :foreground "dark cyan"))))
 '(egg-text-help ((t (:inherit egg-text-base))))
 '(font-lock-comment-face ((t (:foreground "brightmagenta"))))
 '(font-lock-function-name-face ((((class color) (min-colors 88) (background dark)) (:foreground "LightSkyBlue" :weight bold))))
 '(font-lock-keyword-face ((t (:foreground "color-40" :weight bold))))
 '(font-lock-preprocessor-face ((t (:inherit font-lock-builtin-face :weight bold))))
 '(font-lock-string-face ((t (:foreground "green"))))
 '(font-lock-type-face ((((class color) (min-colors 88) (background dark)) (:foreground "PaleGreen" :weight bold))))
 '(fringe ((t (:background "grey35" :foreground "cyan"))))
 '(hl-line ((t (:inherit highlight :background "gray10"))))
 '(ido-first-match ((t (:foreground "green" :weight bold))))
 '(magit-diff-add ((t (:foreground "forest green"))))
 '(magit-item-highlight ((t (:background "gray15"))))
 '(mode-line ((t (:background "dark red" :foreground "white" :box (:line-width -1 :style released-button)))))
 '(mode-line-highlight ((t (:inverse-video t))))
 '(mode-line-inactive ((t (:inherit mode-line :background "darkblue"))))
 '(py-decorators-face ((t (:foreground "brightcyan"))))
 '(py-def-class-face ((t (:inherit font-lock-keyword-face :foreground "color-214"))))
 '(py-import-from-face ((t (:foreground "color-190"))))
 '(py-number-face ((t (:inherit default :foreground "magenta" :weight bold))))
 '(py-pseudo-keyword-face ((t (:inherit font-lock-keyword-face :foreground "cyan"))))
 '(py-variable-name-face ((t (:inherit default :foreground "color-81"))))
 '(region ((t (:background "blue"))))
 '(trailing-whitespace ((t (:background "gray50"))))
 '(whitespace-empty ((t (:background "color-231" :foreground "firebrick"))))
 '(whitespace-hspace ((t nil)))
 '(whitespace-indentation ((t nil)))
 '(whitespace-line ((t (:background "#202020"))))
 '(whitespace-newline ((t nil)))
 '(whitespace-space ((t nil)))
 '(whitespace-space-after-tab ((t (:background "yellow" :foreground "firebrick"))))
 '(whitespace-tab ((t (:background "color-234" :foreground "darkgray")))))

(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
  (require 'package)
  (add-to-list 'package-archives
	       '("melpa" . "http://melpa.org/packages/"))
  (package-refresh-contents)
  (package-initialize)
  (package-install 'el-get)
  (require 'el-get))

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")


(global-set-key [?\C-x w] 'windmove-left)
(el-get-init 'egg)

(el-get-init 'auto-pair+)
(require 'auto-pair+)
(el-get-init 'python-mode)
(require 'python-mode)
(el-get-init 'ropemacs)
(el-get-init 'pymacs)
(autoload 'pymacs-apply "pymacs")
(autoload 'pymacs-call "pymacs")
(autoload 'pymacs-eval "pymacs" nil t)
(autoload 'pymacs-exec "pymacs" nil t)
(autoload 'pymacs-load "pymacs" nil t)

;(el-get-init 'django-mode)
(el-get-init 'highlight-parentheses)
(pymacs-load "ropemacs" "rope-")

;(el-get-init 'python-mode)

(when (load "flymake" t)
  (defun flymake-pylint-init ()
    (list "epylint" (list (buffer-file-name))))
  (defun flymake-phpcs-init ()
    (list "phpcs" (list "-w" (buffer-file-name))))
  (add-to-list 'flymake-allowed-file-name-masks
	       '("\\.py\\'" flymake-pylint-init))
  (add-to-list 'flymake-allowed-file-name-masks
	       '("\\.php\\'" flymake-phpcs-init)))

;; Set as a minor mode for Python
(add-hook 'python-mode-hook '(lambda () (flymake-mode)))
(add-hook 'python-mode-hook '(lambda () (define-key python-mode-map "\C-cn" 'flymake-goto-next-error)))
(add-hook 'python-mode-hook '(lambda () (define-key python-mode-map "\C-cp" 'flymake-goto-prev-error)))
(defun show-fly-err-at-point ()
  "If the cursor is sitting on a flymake error, display the message in the minibuffer"
  (require 'cl)
  (interactive)
  (let ((line-no (line-number-at-pos)))
    (dolist (elem flymake-err-info)
      (if (eq (car elem) line-no)
      (let ((err (car (second elem))))
	(message "%s" (flymake-ler-text err)))))))

(add-hook 'post-command-hook 'show-fly-err-at-point)
(el-get-init 'flymake)

(el-get-init 'flymake-pycheckers)
;; (el-get-init 'elpy)
;; (require 'elpy)

(defvar mPackages
  '(better-defaults
    elpy
    flycheck
    )
  )

(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))

(el-get-init 'flycheck)
(require 'flycheck)
(el-get-init 'markdown-mode)
(el-get-init 'magit)
(require 'magit)
(el-get-init 'php-mode-improved)
(require 'php-mode)

(el-get-init 'flymake-easy)
(el-get-init 'flymake-phpcs)
(require 'flymake-phpcs)

(el-get-init 'xcscope)
(require 'xcscope)

(add-hook 'c-mode-hook (function cscope-minor-mode))
(add-hook 'php-mode-hook (function cscope-minor-mode))

(el-get-init 'jedi)
(autoload 'jedi:setup "jedi" nil t)
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)
(el-get-init 'pos-tip)
(require 'pos-tip)

(el-get-init 'swift-mode)
(require 'swift-mode)
(add-to-list 'auto-mode-alist  '("\\.swift\\'" . swift-mode))
