define COMMIT_MSG
Adding something at $(shell date)

Closes #1
endef

export COMMIT_MSG

push: commit
	git push

commit:
	date >> something
	git cam "$$COMMIT_MSG"

new_branch:
	git cob test

pr:	new_branch commit
	git push -u origin test
	git co develop
	git rebase test
	git bd test
