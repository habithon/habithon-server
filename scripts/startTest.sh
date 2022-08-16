docker compose -f test_compose.yml up -d
docker exec -it test-api bash -c "npm install && npm run test"
