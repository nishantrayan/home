;; clojure-mode
(add-to-list 'load-path "~/opt/clojure-mode")
(require 'clojure-mode)

;; paredit
(add-to-list 'load-path "~/opt/paredit")
(require 'paredit)

;; slime
(eval-after-load "slime" 
  '(progn (slime-setup '(slime-repl))
	  (defun paredit-mode-enable () (paredit-mode 1))
	  (add-hook 'slime-mode-hook 'paredit-mode-enable)
	  (add-hook 'slime-repl-mode-hook 'paredit-mode-enable)
	  (setq slime-protocol-version 'ignore)))

(add-to-list 'load-path "~/opt/slime")
(require 'slime)
(slime-setup)
(show-paren-mode t)
(setq show-paren-style 'parenthesis)
(setq show-paren-delay 0)
;;bind the slime selector to f12 and add a method for finding clojure buffers
(define-key global-map (kbd "<f12>") 'slime-selector)
(def-slime-selector-method ?j
  "most recently visited clojure-mode buffer."
  (slime-recently-visited-buffer 'clojure-mode))

;;bind the slime selector to f12 and add a method for finding clojure buffers
(define-key global-map (kbd "<f12>") 'slime-selector)
(def-slime-selector-method ?j
  "most recently visited clojure-mode buffer."
  (slime-recently-visited-buffer 'clojure-mode))