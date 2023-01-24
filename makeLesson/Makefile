run:
	#call ./marco.sh and pass in "Marco"
	./marco.sh Marco

build:
	#build the docker image and name it "marco"
	docker build -t marco .

invoke:
	#run the docker image in non-interactive mode to marco:latest and pass in "Marco"
	docker run -it marco:latest /bin/bash ./marco.sh "Marco"
	 

interactive:
	#run the docker image in interactive mode
	docker run -it marco:latest