((magit-branch nil)
 (magit-cherry-pick
  ("--ff"))
 (magit-commit nil
	       ("--reuse-message=ORIG_HEAD")
	       ("--reuse-message=master"))
 (magit-diff
  ("--no-ext-diff" "--stat"))
 (magit-dispatch nil)
 (magit-fetch nil)
 (magit-file-dispatch nil)
 (magit-gitignore nil)
 (magit-merge nil)
 (magit-pull nil)
 (magit-push nil
	     ("--force-with-lease"))
 (magit-reset nil)
 (magit-revert
  ("--edit"))
 (magit-revision-history "ORIG_HEAD" "master")
 (magit-stash nil)
 (magit-submodule nil)
 (magit-worktree nil))
