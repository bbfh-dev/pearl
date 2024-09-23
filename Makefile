test:
	@go test -v ./tests/...

coverage:
	@go test -coverprofile=coverage.out ./pearl/... ./tests/...
	@go tool cover -html=coverage.out -o ./tests/coverage.html
	@rm coverage.out
