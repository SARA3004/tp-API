
docker build -t mon-api -f Dockerfile .

docker build -t mon-api-multi -f Dockerfile_multi-stage .


docker scan mon-api
docker scan mon-api-multi


trivy image mon-api
trivy image mon-api-multi
