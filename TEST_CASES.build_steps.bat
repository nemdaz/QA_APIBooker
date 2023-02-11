call newman --version
call newman run TEST_CASES.postman_collection.json -e TEST_CASES.postman_environment.json --folder "CP010 - PING"
call newman run TEST_CASES.postman_collection.json -e TEST_CASES.postman_environment.json --folder "CP020 - TOKEN" -d "TEST_CASES.DataEntry\CP020.json"