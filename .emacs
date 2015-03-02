(setq visible-bell t)
(require 'package)
(require 'json)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

(package-initialize)

(require 'elpy)
(require 'yasnippet)
(require 'iedit)

(elpy-enable) ;This is to enable what I installed in the melpa (i.e. enable elpy package)
(yas/initialize)
(define-key yas-minor-mode-map (kbd "C-c k") 'yas-expand) ;This fixes a bug in elpy
(define-key global-map (kbd "C-c o") 'iedit-mode)  ;This fixes another bug of elpy



(setq inhibit-startup-message t) ;this is to bypass the annoying start up screen (I did it, Isaac)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (deeper-blue)))
 '(python-shell-interpreter "python3"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
