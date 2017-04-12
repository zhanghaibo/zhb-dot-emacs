(deftheme tango-dark
  "Created 2015-11-24.")

(custom-theme-set-variables
 'tango-dark
 '(ansi-color-names-vector ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#ad7fa8" "#8cc4ff" "#eeeeec"]))

(custom-theme-set-faces
 'tango-dark
 '(cursor ((((class color) (min-colors 89)) (:background "#fce94f"))))
 '(fringe ((((class color) (min-colors 89)) (:background "#212526"))))
 '(highlight ((((class color) (min-colors 89)) (:foreground "#2e3436" :background "#edd400"))))
 '(region ((((class color) (min-colors 89)) (:background "#555753"))))
 '(secondary-selection ((((class color) (min-colors 89)) (:background "#204a87"))))
 '(isearch ((((class color) (min-colors 89)) (:foreground "#eeeeec" :background "#ce5c00"))))
 '(lazy-highlight ((((class color) (min-colors 89)) (:background "#8f5902"))))
 '(trailing-whitespace ((((class color) (min-colors 89)) (:background "#a40000"))))
 '(mode-line ((((class color) (min-colors 89)) (:box (:line-width -1 :style released-button) :background "#d3d7cf" :foreground "#2e3436"))))
 '(mode-line-inactive ((((class color) (min-colors 89)) (:box (:line-width -1 :style released-button) :background "#555753" :foreground "#eeeeec"))))
 '(minibuffer-prompt ((((class color) (min-colors 89)) (:foreground "#b4fa70"))))
 '(escape-glyph ((((class color) (min-colors 89)) (:foreground "#c4a000"))))
 '(error ((((class color) (min-colors 89)) (:foreground "#ff4b4b"))))
 '(warning ((((class color) (min-colors 89)) (:foreground "#fcaf3e"))))
 '(success ((((class color) (min-colors 89)) (:foreground "#8ae234"))))
 '(font-lock-builtin-face ((((class color) (min-colors 89)) (:foreground "#ad7fa8"))))
 '(font-lock-comment-face ((((class color) (min-colors 89)) (:foreground "#73d216"))))
 '(font-lock-constant-face ((((class color) (min-colors 89)) (:foreground "#e6a8df"))))
 '(font-lock-function-name-face ((((class color) (min-colors 89)) (:foreground "#fce94f"))))
 '(font-lock-keyword-face ((((class color) (min-colors 89)) (:foreground "#b4fa70"))))
 '(font-lock-string-face ((((class color) (min-colors 89)) (:foreground "#e9b96e"))))
 '(font-lock-type-face ((((class color) (min-colors 89)) (:foreground "#8cc4ff"))))
 '(font-lock-variable-name-face ((((class color) (min-colors 89)) (:foreground "#fcaf3e"))))
 '(link ((((class color) (min-colors 89)) (:underline t :foreground "#729fcf"))))
 '(link-visited ((((class color) (min-colors 89)) (:underline t :foreground "#3465a4"))))
 '(default ((t (:background "black" :foreground "white")))))

(provide-theme 'tango-dark)

