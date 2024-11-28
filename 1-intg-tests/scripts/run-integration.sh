docker-compose up -d
echo '🟡 - Waiting for database to be ready...'
./scripts/wait-for-it.sh "postgresql://postgres:password@localhost:5431/integration_test?schema=public" -- 
echo '🟢 - Database is ready!'
npx prisma migrate dev --name init
npm run test
docker-compose down