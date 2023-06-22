#!/bin/bash
emacs \
	--eval "(load-theme 'leuven t)" \
	--eval '(global-tree-sitter-mode -1)' \
	--eval '(dolist (f (directory-files-recursively (expand-file-name ".") ".*\\.org$"))
		(random "seed") (find-file f) (org-html-export-to-html) (kill-buffer))' \
	--eval '(switch-to-buffer "*Messages*")' \
	--eval '(if (y-or-n-p "exit?") (kill-emacs))'
