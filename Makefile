workflow:
	source ./workflow_maker.sh | tee main.workflow

case:
	source ./case_maker.sh

check:
	shellcheck *.sh
