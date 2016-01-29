build:
	docker build -t webhook .

run:
	docker run -ti -p 9000:9000 -v "$$PWD"/example:/example webhook /go/bin/webhook -hooks /example/hook.json -verbose
