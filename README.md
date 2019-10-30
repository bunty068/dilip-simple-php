#Built Image

docker build -t dilip-simple-php .

#Run Docker

docker-compose -f "docker-composer.yml" up -d --build
