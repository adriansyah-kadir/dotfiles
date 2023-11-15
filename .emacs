(package-initialize)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(setq inhibit-startup-screen 0)
(setq auto-save-default nil)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(spacemacs-dark))
 '(custom-safe-themes
   '("bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" default))
 '(inhibit-startup-screen t)
 '(package-selected-packages '(lsp-mode evil spacemacs-theme)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Hack Nerd Font Mono" :foundry "SRC" :slant normal :weight regular :height 136 :width normal)))))
