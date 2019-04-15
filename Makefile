workflow:
	source ./workflow_maker.sh | tee main.workflow

check:
	shellcheck *.sh
