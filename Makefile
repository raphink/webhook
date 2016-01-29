build:
	docker build -t webhook .

run:
	docker run -ti -p 9000:9000 webhook /bin/bash
