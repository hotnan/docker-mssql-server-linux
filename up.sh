if [ ! -f .env ]; then
    echo "please set .env file first"
else
 docker-compose up --build -d
fi



