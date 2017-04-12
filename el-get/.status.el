((auto-complete status "installed" recipe
		(:name auto-complete :website "https://github.com/auto-complete/auto-complete" :description "The most intelligent auto-completion extension." :type github :pkgname "auto-complete/auto-complete" :depends
		       (popup fuzzy)
		       :features auto-complete-config :post-init
		       (progn
			 (add-to-list 'ac-dictionary-directories
				      (expand-file-name "dict" default-directory))
			 (ac-config-default))))
 (auto-complete-yasnippet status "installed" recipe
			  (:name auto-complete-yasnippet :description "Auto-complete sources for YASnippet" :type http :url "http://www.cx4a.org/pub/auto-complete-yasnippet.el" :depends
				 (auto-complete yasnippet)))
 (auto-pair+ status "installed" recipe
	     (:name auto-pair+ :auto-generated t :type emacswiki :description "Autopair handler to extend Autopair behavior." :website "https://raw.github.com/emacsmirror/emacswiki.org/master/auto-pair+.el"))
 (better-defaults status "installed" recipe
		  (:name better-defaults :type github :pkgname "technomancy/better-defaults" :description "Fixing weird quirks and poor defaults." :checkout "0.1.3"))
 (cl-lib status "installed" recipe
	 (:name cl-lib :builtin "24.3" :type elpa :description "Properly prefixed CL functions and macros" :url "http://elpa.gnu.org/packages/cl-lib.html"))
 (clojure-mode status "installed" recipe
	       (:name clojure-mode :website "https://github.com/clojure-emacs/clojure-mode" :description "Emacs support for the Clojure language." :type github :pkgname "clojure-emacs/clojure-mode"))
 (clojure-snippets status "installed" recipe
		   (:name clojure-snippets :description "yasnippet 0.7.0+ snippets for clojure" :depends yasnippet :type github :pkgname "mpenet/clojure-snippets"))
 (company-mode status "installed" recipe
	       (:name company-mode :website "http://company-mode.github.io/" :description "Modular in-buffer completion framework for Emacs" :type github :pkgname "company-mode/company-mode"))
 (ctable status "installed" recipe
	 (:name ctable :description "Table Component for elisp" :type github :pkgname "kiwanami/emacs-ctable"))
 (dash status "installed" recipe
       (:name dash :description "A modern list api for Emacs. No 'cl required." :type github :pkgname "magnars/dash.el"))
 (deferred status "installed" recipe
   (:name deferred :description "Simple asynchronous functions for emacs lisp." :type github :pkgname "kiwanami/emacs-deferred"))
 (direx status "installed" recipe
	(:name direx :description "Directory Explorer" :type github :pkgname "m2ym/direx-el"))
 (django-mode status "installed" recipe
	      (:name django-mode :description "Major mode for Django web framework." :type github :pkgname "myfreeweb/django-mode" :depends yasnippet :prepare
		     (progn
		       (autoload 'django-mode "django-mode" "Major mode for Django web framework." t)
		       (add-to-list 'auto-mode-alist
				    '(".djhtml$" . django-html-mode)))
		     :post-init
		     (progn
		       (require 'yasnippet)
		       (yas/load-directory
			(expand-file-name "snippets")))))
 (doxymacs status "installed" recipe
	   (:name doxymacs :website "http://doxymacs.sourceforge.net/" :description "Doxymacs is Doxygen + {X}Emacs." :type git :url "git://doxymacs.git.sourceforge.net/gitroot/doxymacs/doxymacs" :load-path
		  ("./lisp")
		  :build
		  (("./bootstrap")
		   ("./configure")
		   ("make"))
		  :build/darwin
		  (("sed" "-i" "" "-e" "s/-fexpensive-optimizations//" "-e" "s/-Werror//" "./c/Makefile.am")
		   ("sed" "-i" "" "-e" "s/^inline/static inline/" "./c/doxymacs_parser.c")
		   ("./bootstrap")
		   ("./configure")
		   ("make"))
		  :prepare
		  (progn
		    (autoload 'doxymacs-mode "doxymacs" nil t))))
 (eassist status "installed" recipe
	  (:name eassist :auto-generated t :type emacswiki :description "EmacsAssist, C/C++/Java/Python/ELisp method/function navigator." :website "https://raw.github.com/emacsmirror/emacswiki.org/master/eassist.el"))
 (egg status "installed" recipe
      (:name egg :description "Egg is an Emacs interface to git. It's a suite composed of a minor-mode and various special-buffers presenting different UIs to help the user performing many git operations." :type github :pkgname "byplayer/egg" :load-path
	     (".")
	     :compile nil :features egg))
 (el-get status "installed" recipe
	 (:name el-get :website "https://github.com/dimitri/el-get#readme" :description "Manage the external elisp bits and pieces you depend upon." :type github :branch "master" :pkgname "dimitri/el-get" :info "." :compile
		("el-get.*\\.el$" "methods/")
		:features el-get :post-init
		(when
		    (memq 'el-get
			  (bound-and-true-p package-activated-list))
		  (message "Deleting melpa bootstrap el-get")
		  (unless package--initialized
		    (package-initialize t))
		  (when
		      (package-installed-p 'el-get)
		    (let
			((feats
			  (delete-dups
			   (el-get-package-features
			    (el-get-elpa-package-directory 'el-get)))))
		      (el-get-elpa-delete-package 'el-get)
		      (dolist
			  (feat feats)
			(unload-feature feat t))))
		  (require 'el-get))))
 (elpy status "installed" recipe
       (:name elpy :website "https://github.com/jorgenschaefer/elpy" :description "Emacs Python Development Environment" :type github :pkgname "jorgenschaefer/elpy" :post-init
	      (el-get-envpath-prepend "PYTHONPATH" default-directory)
	      :depends
	      (company-mode yasnippet highlight-indentation find-file-in-project idomenu pyvenv)))
 (emacs-async status "installed" recipe
	      (:name emacs-async :description "Simple library for asynchronous processing in Emacs" :type github :pkgname "jwiegley/emacs-async"))
 (epc status "installed" recipe
      (:name epc :description "An RPC stack for Emacs Lisp" :type github :pkgname "kiwanami/emacs-epc" :depends
	     (deferred ctable)))
 (epl status "installed" recipe
      (:name epl :description "EPL provides a convenient high-level API for various package.el versions, and aims to overcome its most striking idiocies." :type github :pkgname "cask/epl"))
 (find-file-in-project status "installed" recipe
		       (:name find-file-in-project :type github :pkgname "technomancy/find-file-in-project" :description "Quick access to project files in Emacs"))
 (flycheck status "installed" recipe
	   (:name flycheck :type github :pkgname "flycheck/flycheck" :minimum-emacs-version "24.3" :description "On-the-fly syntax checking extension" :depends
		  (dash pkg-info let-alist seq)))
 (flymake status "installed" recipe
	  (:name flymake :description "Continuous syntax checking for Emacs." :type github :pkgname "illusori/emacs-flymake"))
 (flymake-easy status "installed" recipe
	       (:name flymake-easy :type github :description "Helpers for easily building flymake checkers" :pkgname "purcell/flymake-easy" :website "http://github.com/purcell/flymake-easy"))
 (flymake-phpcs status "installed" recipe
		(:name flymake-phpcs :type github :pkgname "senda-akiha/flymake-phpcs" :description "PHP CodeSniffer for Emacs with flymake" :website "https://github.com/senda-akiha/flymake-phpcs"))
 (flymake-pycheckers status "installed" recipe
		     (:name flymake-pycheckers :type github :pkgname "dholm/flymake-pycheckers" :description "Runs pycheckers in Python buffer using flymake" :website "http://github.com/dholm/flymake-pycheckers" :prepare
			    (setq pycheckers-command
				  (expand-file-name
				   (concat
				    (el-get-package-directory "flymake-pycheckers")
				    "pycheckers")))))
 (fuzzy status "installed" recipe
	(:name fuzzy :website "https://github.com/auto-complete/fuzzy-el" :description "Fuzzy matching utilities for GNU Emacs" :type github :pkgname "auto-complete/fuzzy-el"))
 (git-commit-mode status "installed" recipe
		  (:name git-commit-mode :description "Major mode for editing git commit messages" :type github :pkgname "rafl/git-commit-mode" :features git-commit))
 (git-emacs status "installed" recipe
	    (:name git-emacs :description "Yet another git emacs mode for newbies" :type github :pkgname "tsgates/git-emacs" :features git-emacs))
 (git-modes status "installed" recipe
	    (:name git-modes :description "GNU Emacs modes for various Git-related files" :type github :branch "master" :pkgname "magit/git-modes"))
 (go-mode status "installed" recipe
	  (:name go-mode :description "Major mode for the Go programming language" :type github :pkgname "dominikh/go-mode.el"))
 (highlight-indentation status "installed" recipe
			(:name highlight-indentation :description "Function for highlighting indentation" :type git :url "https://github.com/antonj/Highlight-Indentation-for-Emacs"))
 (highlight-parentheses status "installed" recipe
			(:name highlight-parentheses :description "Highlight the matching parentheses surrounding point." :type github :pkgname "nschum/highlight-parentheses.el"))
 (idomenu status "installed" recipe
	  (:name idomenu :type emacswiki :description "imenu tag selection a la ido" :load-path "."))
 (jedi status "installed" recipe
       (:name jedi :description "An awesome Python auto-completion for Emacs" :type github :pkgname "tkf/emacs-jedi" :submodule nil :depends
	      (epc auto-complete python-environment)))
 (jedi-core status "installed" recipe
	    (:name jedi-core :type github :pkgname "tkf/emacs-jedi" :description "Python jedi core functionality for Emacs. Required for company-jedi" :minimum-emacs-version "24" :compile "jedi-core.el" :depends
		   (epc python-environment cl-lib)))
 (jedi-direx status "installed" recipe
	     (:name jedi-direx :description "Python source tree viewer for jedi" :type github :pkgname "tkf/emacs-jedi-direx" :depends
		    (jedi direx)))
 (let-alist status "installed" recipe
	    (:name let-alist :description "Easily let-bind values of an assoc-list by their names." :builtin "25.0.50" :type elpa :url "https://elpa.gnu.org/packages/let-alist.html"))
 (magit status "installed" recipe
	(:name magit :website "https://github.com/magit/magit#readme" :description "It's Magit! An Emacs mode for Git." :type github :pkgname "magit/magit" :branch "master" :minimum-emacs-version "24.4" :depends
	       (dash with-editor emacs-async)
	       :info "Documentation" :load-path "lisp/" :compile "lisp/" :build
	       `(("make" ,(format "EMACSBIN=%s" el-get-emacs)
		  "docs")
		 ("touch" "lisp/magit-autoloads.el"))
	       :build/berkeley-unix
	       `(("gmake" ,(format "EMACSBIN=%s" el-get-emacs)
		  "docs")
		 ("touch" "lisp/magit-autoloads.el"))
	       :build/windows-nt
	       (with-temp-file "lisp/magit-autoloads.el" nil)))
 (markdown-mode status "installed" recipe
		(:name markdown-mode :description "Major mode to edit Markdown files in Emacs" :website "http://jblevins.org/projects/markdown-mode/" :type github :pkgname "jrblevin/markdown-mode" :prepare
		       (add-to-list 'auto-mode-alist
				    '("\\.\\(md\\|mdown\\|markdown\\)\\'" . markdown-mode))))
 (package status "installed" recipe
	  (:name package :description "ELPA implementation (\"package.el\") from Emacs 24" :builtin "24" :type http :url "https://repo.or.cz/w/emacs.git/blob_plain/ba08b24186711eaeb3748f3d1f23e2c2d9ed0d09:/lisp/emacs-lisp/package.el" :features package :post-init
		 (progn
		   (let
		       ((old-package-user-dir
			 (expand-file-name
			  (convert-standard-filename
			   (concat
			    (file-name-as-directory default-directory)
			    "elpa")))))
		     (when
			 (file-directory-p old-package-user-dir)
		       (add-to-list 'package-directory-list old-package-user-dir)))
		   (setq package-archives
			 (bound-and-true-p package-archives))
		   (let
		       ((protocol
			 (if
			     (and
			      (fboundp 'gnutls-available-p)
			      (gnutls-available-p))
			     "https://"
			   (lwarn
			    '(el-get tls)
			    :warning "Your Emacs doesn't support HTTPS (TLS)%s"
			    (if
				(eq system-type 'windows-nt)
				",\n  see https://github.com/dimitri/el-get/wiki/Installation-on-Windows." "."))
			   "http://"))
			(archives
			 '(("melpa" . "melpa.org/packages/")
			   ("gnu" . "elpa.gnu.org/packages/")
			   ("marmalade" . "marmalade-repo.org/packages/"))))
		     (dolist
			 (archive archives)
		       (add-to-list 'package-archives
				    (cons
				     (car archive)
				     (concat protocol
					     (cdr archive)))))))))
 (php-mode-improved status "installed" recipe
		    (:name php-mode-improved :description "Major mode for editing PHP code. This is a version of the php-mode from http://php-mode.sourceforge.net that fixes a few bugs which make using php-mode much more palatable" :type emacswiki :load
			   ("php-mode-improved.el")
			   :features php-mode))
 (pkg-info status "installed" recipe
	   (:name pkg-info :description "Provide information about Emacs packages." :type github :pkgname "lunaryorn/pkg-info.el" :depends
		  (dash epl)))
 (popup status "installed" recipe
	(:name popup :website "https://github.com/auto-complete/popup-el" :description "Visual Popup Interface Library for Emacs" :type github :submodule nil :depends cl-lib :pkgname "auto-complete/popup-el"))
 (pos-tip status "installed" recipe
	  (:name pos-tip :description "Show tooltip at point" :type emacswiki))
 (pycomplete+ status "installed" recipe
	      (:name pycomplete+ :auto-generated t :type emacswiki :description "complete symbols at point using Pymacs" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/pycomplete+.el"))
 (pymacs status "installed" recipe
	 (:name pymacs :description "Interface between Emacs Lisp and Python" :type github :pkgname "pinard/Pymacs" :prepare
		(progn
		  (el-get-envpath-prepend "PYTHONPATH" default-directory)
		  (autoload 'pymacs-load "pymacs" nil t)
		  (autoload 'pymacs-eval "pymacs" nil t)
		  (autoload 'pymacs-exec "pymacs" nil t)
		  (autoload 'pymacs-call "pymacs")
		  (autoload 'pymacs-apply "pymacs"))
		:build
		(("make"))
		:build/windows-nt
		(("python" "pppp" "-C" "ppppconfig.py" "Pymacs.py.in" "pppp.rst.in" "pymacs.el.in" "pymacs.rst.in" "contrib" "tests")
		 ("python" "setup.py" "--quiet" "build"))))
 (python-environment status "installed" recipe
		     (:name python-environment :description "Python virtualenv API for Emacs Lisp" :type github :pkgname "tkf/emacs-python-environment" :depends
			    (deferred)))
 (python-mode status "installed" recipe
	      (:name python-mode :description "Major mode for editing Python programs" :type bzr :url "lp:python-mode" :load-path
		     ("." "test")
		     :compile nil :prepare
		     (progn
		       (autoload 'python-mode "python-mode" "Python editing mode." t)
		       (autoload 'doctest-mode "doctest-mode" "Doctest unittest editing mode." t)
		       (setq py-install-directory
			     (el-get-package-directory "python-mode"))
		       (add-to-list 'auto-mode-alist
				    '("\\.py$" . python-mode))
		       (add-to-list 'interpreter-mode-alist
				    '("python" . python-mode)))))
 (pyvenv status "installed" recipe
	 (:name pyvenv :website "https://github.com/jorgenschaefer/pyvenv" :description "Python virtual environment interface for Emacs" :type github :pkgname "jorgenschaefer/pyvenv" :post-init
		(el-get-envpath-prepend "PYTHONPATH" default-directory)))
 (rainbow-delimiters status "installed" recipe
		     (:name rainbow-delimiters :website "https://github.com/Fanael/rainbow-delimiters#readme" :description "Color nested parentheses, brackets, and braces according to their depth." :type github :pkgname "Fanael/rainbow-delimiters"))
 (rainbow-identifiers status "installed" recipe
		      (:name rainbow-identifiers :description "Rainbow identifier highlighting for Emacs" :type github :pkgname "Fanael/rainbow-identifiers" :minimum-emacs-version 24 :prepare
			     (add-hook 'prog-mode-hook 'rainbow-identifiers-mode)))
 (rainbow-mode status "installed" recipe
	       (:name rainbow-mode :description "Colorize color names in buffers" :type elpa :prepare
		      (autoload 'rainbow-turn-on "rainbow-mode")))
 (rope status "installed" recipe
       (:name rope :description "A python refactoring library" :post-init
	      (el-get-envpath-prepend "PYTHONPATH" default-directory)
	      :type git :url "https://github.com/python-rope/rope.git"))
 (ropemacs status "installed" recipe
	   (:name ropemacs :description "An Emacs minor mode for using rope python refactoring library in emacs." :post-init
		  (progn
		    (unless
			(boundp 'pymacs-load-path)
		      (setq pymacs-load-path nil))
		    (add-to-list 'pymacs-load-path default-directory))
		  :depends
		  (rope ropemode pymacs)
		  :type git :url "https://github.com/python-rope/ropemacs"))
 (ropemode status "installed" recipe
	   (:name ropemode :description "Common parts of ropemacs and ropevim." :post-init
		  (progn
		    (unless
			(boundp 'pymacs-load-path)
		      (setq pymacs-load-path nil))
		    (add-to-list 'pymacs-load-path default-directory))
		  :type git :url "https://github.com/python-rope/ropemode"))
 (seq status "installed" recipe
      (:name seq :description "Sequence manipulation library for Emacs" :builtin "25" :type github :pkgname "NicolasPetton/seq.el"))
 (swift-mode status "installed" recipe
	     (:name swift-mode :description "Major-mode for Apple's Swift programming language" :type github :pkgname "chrisbarrett/swift-mode"))
 (web-mode status "required" recipe nil)
 (web-mode-extension status "installed" recipe
		     (:name web-mode-extension :auto-generated t :type emacswiki :description "Extension for web-mode" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/web-mode-extension.el"))
 (with-editor status "installed" recipe
   (:name with-editor :description "Use the Emacsclient as $EDITOR" :type github :pkgname "magit/with-editor"))
 (xcscope status "installed" recipe
	  (:name xcscope :description "Cscope interface for (X)Emacs" :type github :pkgname "dkogan/xcscope.el" :prepare
		 (progn
		   (add-hook 'c-mode-hook #'cscope-minor-mode)
		   (add-hook 'c++-mode-hook #'cscope-minor-mode)
		   (add-hook 'dired-mode-hook #'cscope-minor-mode))))
 (yaml-mode status "installed" recipe
	    (:name yaml-mode :description "Simple major mode to edit YAML file for emacs" :type github :pkgname "yoshiki/yaml-mode"))
 (yasnippet status "installed" recipe
	    (:name yasnippet :website "https://github.com/capitaomorte/yasnippet.git" :description "YASnippet is a template system for Emacs." :type github :pkgname "capitaomorte/yasnippet" :compile "yasnippet.el" :submodule nil :build
		   (("git" "submodule" "update" "--init" "--" "snippets")))))
