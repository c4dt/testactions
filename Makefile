push: commit
	git push

commit:
	date >> something
	git cam "Adding something at $$(( date ))"

new_branch:
	git cob test

pr:	new_branch commit
	git push -u origin test
	git co develop
	git bd test
