help:
	@grep "^[a-zA-Z_\-]*:" Makefile | grep -v "grep" | sed -e 's/^/make /' | sed -e 's/://'

deploy:
	@AWS_SDK_LOAD_CONFIG=1 sls deploy --aws-profile wovn-itsystem

remove:
	sls remove --aws-profile wovn-itsystem
