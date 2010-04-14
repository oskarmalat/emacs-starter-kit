
(global-set-key "" 'electric-buffer-list)

(global-set-key [f1]  'goto-line)
;; Turn on the menu bar for exploring new modes
(global-set-key [f2] 'menu-bar-mode)
(global-set-key [f11] 'repeat-complex-command)
(global-set-key [f12] 'undo)
(global-set-key [f5] 'start-kbd-macro)                       
(global-set-key [f6] 'end-kbd-macro)                       
(global-set-key [f7] 'call-last-kbd-macro)                       

;; Change the colors of the Mode Line to something you like.
;; To get a list of available colors, do M-x list-colors-display.
(set-face-foreground 'modeline "white")
(set-face-background 'modeline "Blue")
