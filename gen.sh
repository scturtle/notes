#!/bin/bash
emacs \
	--eval "(load-theme 'leuven t)" \
	--eval "(global-tree-sitter-mode -1)" \
	--eval '(mapc (lambda (f) (message f) (find-file f) (org-html-export-to-html) (kill-buffer))
		(directory-files-recursively (expand-file-name ".") ".*\\.org$"))' \
	--eval "(kill-emacs)"
