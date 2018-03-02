
.PHONY: clean build curl java jobs

clean:
	docker image rm containerize/toolbox:java
	docker image rm containerize/toolbox:curl
	
build:
	docker build -t containerize/toolbox:java java
	docker build -t containerize/toolbox:curl curl
	docker build -t containerize/toolbox:jobs jobs

jobs: build
	docker push containerize/toolbox:jobs

java: build
	docker push containerize/toolbox:java

curl: build
	docker push containerize/toolbox:curl	