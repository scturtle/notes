#!/bin/bash
emacs --batch -l ~/.emacs.d/init.el --eval \
	'(mapc (lambda (f) (message f) (find-file f) (org-html-export-to-html) (kill-buffer))
	(directory-files-recursively (expand-file-name ".") ".*\\.org$"))'
