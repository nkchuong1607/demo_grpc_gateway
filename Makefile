gen-proto:
	protoc demopb/demo.proto --go_out=paths=source_relative,plugins=grpc:. --grpc-gateway_out=logtostderr=true,paths=source_relative:.
run-server:
	go run main.go
run-proxy:
	go run proxy/proxy.go